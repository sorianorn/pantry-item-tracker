import 'package:flutter/material.dart';
import 'package:no_to_food_waste_app/application/screens/dashboard/widgets/carousel_item_indicator.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    super.key,
    required this.itemCardList,
    this.carouselController,
    this.onItemChanged,
  });

  final List<Widget> itemCardList;
  final double height = 280;
  final CarouselController? carouselController;
  final Duration nextItemDuration = const Duration(milliseconds: 500);
  final void Function({required bool isLastItem})? onItemChanged;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    widget.carouselController?.addListener(_handleNextItem);
    _pageController.addListener(_handleItemChanged);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          for (int i = 0; i < widget.itemCardList.length; i++)
            Container(
              width: MediaQuery.of(context).size.width / 2.25,
              child: widget.itemCardList.elementAt(i),
            )
        ],
      ),
    );
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     SizedBox(
    //       height: widget.height,
    //       width: 200,
    //       child: PageView(
    //         controller: _pageController,
    //         children: widget.itemCardList,
    //       ),
    //     ),
    //     CarouselItemIndicator(
    //       indicatorNumber: widget.itemCardList.length,
    //       currentIndicatorNumber: _pageController.positions.isEmpty
    //           ? 0
    //           : _pageController.page!.round(),
    //       onIndicatorTapped: _animateToItem,
    //     ),
    //   ],
    // );
  }

  void _handleNextItem() {
    _pageController.nextPage(
      duration: widget.nextItemDuration,
      curve: Curves.easeIn,
    );
  }

  void _animateToItem(int itemNo) {
    _pageController.animateToPage(
      itemNo,
      duration: widget.nextItemDuration,
      curve: Curves.easeIn,
    );
  }

  void _handleItemChanged() {
    setState(() {});
    if (widget.onItemChanged != null) {
      widget.onItemChanged!(
          isLastItem:
              _pageController.page!.round() == widget.itemCardList.length - 1);
    }
  }
}

class CarouselController extends ChangeNotifier {
  void toNextItem() {
    notifyListeners();
  }
}
