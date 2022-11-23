import 'package:counter_7/screens/tugas9/watchlist_detail.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer.dart';
import 'package:counter_7/utils/fetch_mywatchlist.dart';
import 'package:counter_7/model/mywatchlist.dart';

Color sudah = Colors.blue.shade400;
Color belum = Colors.redAccent;

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  // Agar memanggil fetchWatchList sekali
  late Future<List<MyWatchList>> dataList;

  @override
  void initState() {
    super.initState();
    dataList = fetchWatchlist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Watch List"),
      ),
      drawer: drawer(context),
      body: FutureBuilder(
          future: dataList,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Tidak ada to do list :(",
                      style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    padding: const EdgeInsets.all(8.0),
                    itemCount: snapshot.data.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color:
                                  snapshot.data![index].watched ? sudah : belum,
                              width: 2.0),
                        ),
                        shadowColor: Colors.grey,
                        elevation: 10,
                        child: ListTile(
                          title: Text(
                            snapshot.data[index].title,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          trailing: Checkbox(
                            value: snapshot.data[index].watched,
                            activeColor: Colors.green.shade400,
                            checkColor: Colors.black,
                            side:
                                const BorderSide(color: Colors.black, width: 2),
                            onChanged: (bool? val) {
                              setState(() {
                                snapshot.data[index].watched = val!;
                              });
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => WatchListDetail(
                                          movieDetail: snapshot.data[index],
                                        ))));
                          },
                        ),
                      );
                    }));
              }
            }
          }),
    );
  }
}
