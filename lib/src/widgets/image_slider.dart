import 'package:flutter/material.dart';
import '../blocs/date_time_provider.dart';
import 'package:swipedetector/swipedetector.dart';

class ImageCarousel extends StatelessWidget {
  final photos;

  ImageCarousel({this.photos});

  Widget build(BuildContext context) {
    final bloc = DateTimeProvider.of(context);

    void _previousImage(DateTimeBloc bloc, int index) {
      index = (index - 1) % photos.length;
      bloc.changeImage(index);
    }

    void _nextImage(DateTimeBloc bloc, int index) {
      index = (index + 1) % photos.length;
      bloc.changeImage(index);
    }

    return StreamBuilder(
      stream: bloc.image,
      builder: (context, snapshot) {
        return Stack(
          children: <Widget>[
            SwipeDetector(
              onSwipeLeft: () {
                _nextImage(bloc, snapshot.hasData ? snapshot.data : 0);
              },
              onSwipeRight: () {
                _previousImage(bloc, snapshot.hasData ? snapshot.data : 0);
              },
              swipeConfiguration: SwipeConfiguration(
                  horizontalSwipeMinDisplacement: 10.0,
                  horizontalSwipeMinVelocity: 150.0,
                  horizontalSwipeMaxHeightThreshold: 50.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        photos[snapshot.hasData ? snapshot.data : 0]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 225.0,
              left: 25.0,
              right: 25.0,
              child: SelectedPhoto(
                numberOfDots: photos.length,
                photoIndex: snapshot.hasData ? snapshot.data : 0,
              ),
            ),
          ],
        );
      },
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 2.0, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.0,
                  blurRadius: 2.0,
                )
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
