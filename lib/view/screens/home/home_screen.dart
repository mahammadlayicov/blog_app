import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/constant/categories.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/provider/category_provider.dart';
import 'package:news_app/provider/grid_provider.dart';
import 'package:news_app/view/widgets/textfieldsearch_widget.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';
import 'package:provider/provider.dart';

import '../../../constant/home_categories.dart';
import '../../widgets/categories_widget.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: TwoTextWidget(
                  title: "Browse",
                  description: "Discover things of this world")),
          Container(
              height: MediaQuery.of(context).size.height * 0.07,
              child: TextfieldSearchWidget(
                suffixIcon: Icons.mic_none,
                prefixIcon: Icons.search,
                title: "Search",
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height * 0.05,
              child: Consumer<CategoryProvider>(
                builder: (context, categoryProvider, child) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: HomeCategories.categories.length,
                    itemBuilder: (context, index) {
                      CategoryModel categoryModel =
                          HomeCategories.categories[index];
                      final isSelected = categoryProvider.selectedCategory ==
                          categoryModel.title;
                      return GestureDetector(
                        onTap: () {
                          categoryProvider.selectCategory(categoryModel.title);
                        },
                        child: categories_widget(
                          isSelect: isSelected,
                          categoryModel: categoryModel,
                        ),
                      );
                    },
                  );
                },
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Provider.of<GridProvider>(context, listen: false)
                        .selectGrid();
                  },
                  icon: Provider.of<GridProvider>(context, listen: false).grid
                      ? Icon(color: purplePrimary, Icons.grid_view_rounded)
                      : Icon(Icons.grid_view_outlined),
                ),
                IconButton(
                  onPressed: () {
                    Provider.of<GridProvider>(context, listen: false)
                        .selectGrid2();
                  },
                  icon: Provider.of<GridProvider>(context, listen: false).grid
                      ? Icon(Icons.table_chart_outlined)
                      : Icon(color: purplePrimary, Icons.table_chart),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      Provider.of<GridProvider>(context).grid ? 2 : 1,
                  crossAxisSpacing: 10),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(bottom: 20),
                  color: greyLighter,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.network(
                              "https://picsum.photos/200/500",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    'A Simple Trick For Creating Color Palettes Quickly',
                                    maxLines:
                                        Provider.of<GridProvider>(context).grid
                                            ? 1
                                            : 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark_border_outlined,
                                    color: Colors.grey,
                                    size:
                                        Provider.of<GridProvider>(context).grid
                                            ? 20
                                            : 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
