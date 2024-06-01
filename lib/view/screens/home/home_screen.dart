import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/constant/blogs.dart';
import 'package:news_app/constant/categories.dart';
import 'package:news_app/models/blog_model.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/provider/category_provider.dart';
import 'package:news_app/provider/grid_provider.dart';
import 'package:news_app/view/widgets/article_card_mini_widget.dart';
import 'package:news_app/view/widgets/textfieldsearch_widget.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';
import 'package:provider/provider.dart';

import '../../../constant/home_categories.dart';
import '../../widgets/article_widget.dart';
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
            ),
          ),
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
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      Provider.of<GridProvider>(context).grid ? 2 : 1,
                  crossAxisSpacing: 10),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: Provider.of<CategoryProvider>(context).list.length,
              itemBuilder: (context, index) {
                BlogModel blogModel =
                    Provider.of<CategoryProvider>(context).list[index];
                return GestureDetector(
                  onTap: () {
                    context.router.push(ArticleRoute(blogModel: blogModel));
                  },
                  child: Provider.of<GridProvider>(context).grid
                      ? ArticleCardMiniWidget(
                          blogModel: blogModel,
                        )
                      : ArticleCardWidget(
                          blogModel: blogModel,
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
