import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import '../models/instructions_model.dart';

class InstructionsPage extends StatefulWidget {
  const InstructionsPage({super.key});


  @override
  State<InstructionsPage> createState() => _InstructionsPageState();
}

class _InstructionsPageState extends State<InstructionsPage> {
  ///// Categories Keys
  final List<GlobalKey> keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),

  ];

  ////Scroll Controller
  late ScrollController scrollController;

  ////Tab Context
  BuildContext? tabContext;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(animateToTabs);
    super.initState();
  }

  /// Here we have to develop a function for navigating between tabs with some animation
  void animateToTabs() {
    late RenderBox box;

    for (var i = 0; i < keys.length; i++) {
      box = keys[i].currentContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);

      if (scrollController.offset >= position.dy) {
        DefaultTabController.of(tabContext!).animateTo(
          i,
          duration: const Duration(milliseconds: 100),
        );
      }
    }
  }

  void scrollToIndex(int index)async{
    scrollController.removeListener(animateToTabs);
    final categories = keys[index].currentContext!;

    await Scrollable.ensureVisible(categories,
    duration:const Duration(milliseconds: 500)
    );

    scrollController.addListener(animateToTabs);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Builder(
            builder: (context) {
              tabContext = context;
              return SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    _buildInstructionsTitle("الزلازل", 0),
                    _buildItemList(Instructions.earthquake),
                    _buildInstructionsTitle("الحرائق", 1),
                    _buildItemList(Instructions.fire),
                    _buildInstructionsTitle("فايروس كورونا", 2),
                    _buildItemList(Instructions.covid19),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Remix.menu_2_line),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Remix.search_line,
          ),
        ),
      ],
      title: const Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "كوارث طبيعية",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          Text(
            "الارشادات",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
      bottom: TabBar(
        tabs: const [
          Tab(
            child: Text("الزلازل"),
          ),
          Tab(
            child: Text("الحرائق"),
          ),
          Tab(
            child: Text("فايروس كورونا"),
          ),
        ],
        onTap: (int value) => scrollToIndex(value),
      ),
    );
  }

  Widget _buildInstructionsTitle(String title, int index) {
    return Padding(
      key: keys[index],
      padding: const EdgeInsets.only(top: 14, right: 12, left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "رؤية المزيد",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.indigo,
                    ),
                  ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget _buildSingleItem(InstructionsModel item) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 160,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            item.description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                Icon(Remix.arrow_right_s_line),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildItemList(List<InstructionsModel> categories) {
    return Column(
      children: categories.map((item) => _buildSingleItem(item)).toList(),
    );
  }
}
