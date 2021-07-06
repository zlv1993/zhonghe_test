import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FoundPage extends StatefulWidget {
  @override
  _FoundPageState createState() => _FoundPageState();
}

class _FoundPageState extends State<FoundPage> {
  VideoPlayerController _controller;
  Duration position;
  Duration duration;
  @override
  void initState() {
    super.initState();
    _controller=VideoPlayerController.network('https://www.w3school.com.cn/example/html5/mov_bbb.mp4')..initialize().then((value) =>{

      setState((){
        position= _controller.value.position;
        duration=_controller.value.duration;
      })
    });
    _controller.addListener(VideoCallback);
  }

  void VideoCallback(){
    setState((){
      position= _controller.value.position;
      duration=_controller.value.duration;
      if(duration.toString()==position.toString()){
        _controller.seekTo(Duration(seconds: 0));
        _controller.pause();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Scaffold(
        appBar: AppBar(
          title:Text("${_controller.value.position}")
        ),
        body: Column(
          children: [
            videoContent(),
            Text(position.toString()),
            Text(duration.toString()),
          ],
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
              position=_controller.value.position;
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
  Widget videoContent(){

   return  _controller.value.isInitialized
        ? AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    )
        : Container(
      height: 300,
      width: 200,
      decoration:BoxDecoration(
          color: Colors.lightGreen[400]
      ) ,
    );

  }


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


}


