import 'package:flutter/material.dart';

class CuiTagItem extends StatelessWidget {
  String title;
  Function? onDelete;
  Function? onEdit;
  CuiTagItem({required this.title,this.onDelete,this.onEdit,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50)
      ),
      margin: const EdgeInsets.only(left: 2, right: 2),
      padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(color: Colors.white),),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  if(onDelete != null){
                    onDelete!();
                  }
                },
                  child:Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  margin: const EdgeInsets.only(left: 5),
                  padding: const EdgeInsets.all(3),
                  child: const Icon(Icons.close, size: 11, color: Colors.white,),
                )
              ),
              GestureDetector(
                  onTap: (){
                    if(onEdit != null){
                      onEdit!();
                    }
                  },
                  child:Container(
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    margin: const EdgeInsets.only(left: 5),
                    padding: const EdgeInsets.all(3),
                    child: const Icon(Icons.edit, size: 11, color: Colors.white,),
                  )
              ),
            ],
          )

        ],
      ),
    );
  }
}
