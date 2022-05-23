import 'package:course_app/model/course_model.dart';
import 'package:course_app/model/educator_model.dart';
import 'package:course_app/utils/custom_colors.dart';
import 'package:course_app/utils/custom_text.dart';
import 'package:course_app/widgets/course_card.dart';
import 'package:course_app/widgets/educator_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  List tabs = [
    'My Courses',
    'Trending',
  ];
  List<CourseModel> courseList = [
    CourseModel(title: 'Programming', educator: "Robert M.C", img: "course_1.jpg"),
    CourseModel(title: 'Security', educator: "Tom B Jack", img: "course_2.jpg"),
    CourseModel(title: 'Design Product', educator: "Caroline S", img: "course_3.jpg"),
  ];

  List<EducatorModel> educatorList = [
    EducatorModel(name: 'Robert M.C', courseCount:  "12 Course", img: "person_2.jpg"),
    EducatorModel(name: 'Caroline S', courseCount:  "10 Course", img: "person_3.jpg"),
    EducatorModel(name: 'M Andrea', courseCount:  "15 Course", img: "person_4.jpg"),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(_handleTabControllerTick);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabControllerTick() {
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryDark,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 48.0),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Hello Satwik", style: CustomText.titleXLarge(context, 1),),
                          const SizedBox(
                            height: 8,
                          ),
                          Text("What are you learning today?", style: CustomText.bodyLarge(context, 2),),
                        ],
                      ),
                    ),

                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: CustomColors.accent,
                        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(color: CustomColors.white, width: 2.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                        "assets/images/person_1.jpg",
                        fit: BoxFit.cover,
                      ),
                      ),
                    ),

                  ],
                ),

                const SizedBox(
                  height: 32.0,
                ),

                Container(
                  width: double.infinity,
                  height: 56.0,
                  padding: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          CustomColors.accent.withOpacity(0.5),
                          CustomColors.primaryDark
                        ],
                      ),
                    borderRadius: const BorderRadius.all(Radius.circular(16.0))
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: const BoxDecoration(
                        color: CustomColors.primaryLight,
                        borderRadius: BorderRadius.all(Radius.circular(16.0))
                    ),
                    child: TextFormField(
                      onTap: (){},
                      readOnly: false,
                      cursorWidth: 1,
                      autocorrect: true,
                      autofocus: false,
                      style: const TextStyle(color: CustomColors.accent),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        labelStyle: const TextStyle(fontSize: 12, color: Colors.black54),
                        border: InputBorder.none,
                        hintStyle: const TextStyle(color: CustomColors.accent),
                        hintText: 'Search Course, Educators...',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        errorStyle: TextStyle(
                          fontSize: 9,
                          color: Colors.redAccent.withOpacity(0.7),
                        ),
                        contentPadding: const EdgeInsets.all(16.0),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 48.0,
                ),

                SizedBox(
                  width: double.infinity,

                  child: TabBar(
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(color: CustomColors.white, width: 4.0),
                      insets: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 55.0),
                    ),
                    labelColor: CustomColors.white,
                    labelStyle: const TextStyle(fontSize: 18),
                    controller: _tabController,
                    unselectedLabelColor: CustomColors.accent,
                    isScrollable: true,
                    tabs: tabs.map((e) => Tab(text: e)).toList(),
                  ),
                ),

                const SizedBox(
                  height: 16.0,
                ),

                SizedBox(
                  width: double.infinity,
                    height: 190,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                        padding: EdgeInsets.zero,
                        itemCount: courseList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return CourseCard(course: courseList[index],);
                        })
                ),

                const SizedBox(
                  height: 32.0,
                ),

                Container(
                  width: double.infinity,
                    padding: const EdgeInsets.only(left: 12.0),
                  child: const Text("Top Educators", style: TextStyle(fontSize: 18, color: CustomColors.white)),
                ),

                const SizedBox(
                  height: 18.0,
                ),

                SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                        padding: EdgeInsets.zero,
                        itemCount: educatorList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return EducatorCard(educator: educatorList[index],);
                        })
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
