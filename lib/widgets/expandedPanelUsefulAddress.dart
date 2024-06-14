import 'package:chamber_of_commerce/widgets/ContactTemplete.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


  

// ignore: must_be_immutable
class ExpandedPanelUsefullAddress extends StatefulWidget {
  final List<Map<String,dynamic>> data;
  bool clickable;
  ExpandedPanelUsefullAddress({super.key,required this.data, this.clickable = false});

  @override
  State<ExpandedPanelUsefullAddress> createState() => _ExpandedPanelUsefullAddressState();
}

class _ExpandedPanelUsefullAddressState extends State<ExpandedPanelUsefullAddress> {
  // final List<Map<String,dynamic>> _data =[
  //   {
  //     "title":"item 1",
  //   "content": "content 1"
  //   },
  //    {
  //     "title":"item 2",
  //   "content": "content 2"
  //    }
   

  // ];
  // {
  //   return Item(
  //     headerText: 'Item $index',
  //     expandedText: 'This is item number $index',
  //   );
  // });

  @override
  Widget build(BuildContext context) {
    return 
     SingleChildScrollView(
       child: Column(
        mainAxisSize: MainAxisSize.min,
         children:[ 
          // Card(
          //                     color: const Color.fromARGB(255,229,234,232),
          //   child: ExpansionTile(
          //         collapsedShape: RoundedRectangleBorder(side: BorderSide.none),
          //       shape: const RoundedRectangleBorder(side: BorderSide.none),
          //         title:widget.data[0]['category']=="Bank"?  Text(widget.data[0]['category'],style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),),):
          //         const Text('',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),),
                
            
                   
                    
          //         // ],
          //          ),
          // ),
          ListView.builder(itemBuilder:(context, index) {
             return  Card(
                                      color: const Color.fromARGB(255,229,234,232),
           child:  ExpansionTile(
                  collapsedShape: const RoundedRectangleBorder(side: BorderSide.none),
                shape: const RoundedRectangleBorder(side: BorderSide.none),
                  title: const Text('Bank',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),),
                    children: [
                if(widget.clickable == true)
              ListView.builder(
                   itemCount: widget.data.length,
                   shrinkWrap: true,
                   itemBuilder: (_, index){
                     final item =   widget.data[index];
                     return 
                     
                  item['category'] == "Bank"?
                      Card(     
                       color: const Color.fromARGB(255,229,234,232),
                       // elevation: 4,
                       child: 
                         ExpansionTile(
                         collapsedShape: RoundedRectangleBorder(side: BorderSide.none),
                         shape: const RoundedRectangleBorder(side: BorderSide.none),
                         title: Text(item['title'],style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),),),
                         children: [
                         Container(
                         width:double.infinity,
                         color: const Color.fromARGB(255, 255, 255, 255),
                               
                         child: Column(
                           children: [
                             ContactTemeplete(tel: item['tel'],)
                        
                           ],
                         )
                         
                          )
                         ],
                         ),
                     ): null;
                   },
                   )
                    ],
                   
           
                 
           ),
         );})
        //  const ExpansionTile(
        //         collapsedShape: RoundedRectangleBorder(side: BorderSide.none),
        //       shape: RoundedRectangleBorder(side: BorderSide.none),
        //         title:  Text('Insurance',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),),)
                
              
        //  ),
         ]
       ),
     );
    
   
  }



}
