import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    //mediaquery라는 라이브러리를 써서 앱을 사용하는 핸드폰의 화면 크기를 가져옴 final로 한 번 받아오고 변경 불가 상태로 만듦

    return Scaffold(
      appBar: AppBar(title: Text("Firebase Login")),
      body: Stack(
        alignment: Alignment.center, // 정렬
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center, // 정렬
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ), //gif가 들어갈 공간
              Stack(
                children: <Widget>[
                  _inputForm(size), //input form이 될 공간
                  _authButton(size),
                  ],
              ),

              Container(
                height: size.height * 0.10,
              ),
              Text("Don't Have an Account? Create One"),
              Container(
                height: size.height * 0.05,
              ) // end line과 gap을 주기 위함
            ],
          ),
        ],
      ),
    );
  }

  Widget _inputForm(Size size) {
   return Padding(
      padding: EdgeInsets.all(size.width * 0.05), //패딩 추가
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8, //그림자 추가
        child: Form(
          key: _formKey, //unique한 id라고 생각하면 될 듯
          child: Padding(
            padding: EdgeInsets.only(
                left: 12.0, right: 12.0, top: 12.0, bottom: 36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //정렬 왼쪽으로
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_circle), labelText: "Email"),
                  validator: (String value) {
                    //user가 뭔가 작성을 하면 value가 맞는 데이터인지 체크해주는 것
                    if (value.isEmpty) {
                      return "Please input correct Email"; // error message
                    }
                    return null;
                  },
                ),
                // animation이 자동으로 생김
                TextFormField(
                    controller: _pwController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key), labelText: "Password"),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Please input correct Password"; // error message
                      }
                      return null;
                    }),
                Container(height: 10),
                Text("Forgot Password?"),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _authButton(Size size){
    return Positioned(
      left:size.width * 0.1,
      right:size.width * 0.1,
      bottom: 0,
      child: RaisedButton(
          child: Text("Login"),
          color:Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          onPressed: (){

          }
      ),
    );//버튼이 될 공간
  }
}
