import 'package:flutter/material.dart';

void main() {
  runApp(const CarrinhoCompras());
}

class CarrinhoCompras extends StatelessWidget {
  const CarrinhoCompras({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrinho de Compras',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CarrinhoComprasPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Produto {
  final String nome;
  final double preco;
  final String imagemUrl;

  Produto(this.nome, this.preco, this.imagemUrl);
}

class CarrinhoComprasPage extends StatefulWidget {
  const CarrinhoComprasPage({super.key});

  @override
  State<CarrinhoComprasPage> createState() => _CarrinhoComprasPageState();
}

class _CarrinhoComprasPageState extends State<CarrinhoComprasPage> {
  final List<Produto> produtos = [
    Produto(
      'Banana',
      1.89,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBb3xeGWriqXUAjoUZaNAnp0EeeVp0JSiLaw&s',
    ),
    Produto(
      'Morango',
      3.25,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-iS652xKs7iXonBJOuZUZNINeyIjBjXIrrQ&s',
    ),
    Produto(
      'Kiwi',
      2.10,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiA-_xV7u2RlpOzmR7YsxtCjoeZ0TUWh8BLA&s',
    ),
    Produto(
      'Maça',
      1.99,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJMvzfVqQ8HJ4dUsAIetngNRI7KmIEFcsYVA&s',
    ),
    Produto(
      'Pêra',
      2.99,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4J8icV4S0BDYIQYSEwB4yom12DIan1AwNxg&s',
    ),
    Produto(
      'Manga',
      2.70,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzPUw6_bv0QcKNNfpO7_rq1KDHi5rPnBN-nw&s',
    ),
    Produto(
      'Goiaba',
      3.50,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8BaJM7v7P2zV52toc-gZIQ790fuNYWhT6nQ&s',
    ),
    Produto(
      'Uva',
      1.99,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgoFZbI6M4pN4afobM_fSfJjjpUfLa91sbiQ&s',
    ),
    Produto(
      'Ameixa',
      2.99,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS392Y2nN44NTm-412HA29a19Po-RFKQ2eovg&s',
    ),
    Produto(
      'Amora',
      2.99,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj0nx8bOqS9EvgLVJKfX790ZZk4r8--HSHvg&s',
    ),
  ];

  double total = 0.0;

  void adicionarAoCarrinho(double preco) {
    setState(() {
      total += preco;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.shopping_cart_outlined, color: Colors.white),
        backgroundColor: Colors.teal[800],
        centerTitle: true,
        title: const Text(
          'Carrinho de Compras',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: produtos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemBuilder: (BuildContext context, index) {
              var produto = produtos[index];
              return Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadowColor: Colors.teal[800],
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(top: 12.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          produto.imagemUrl,
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          produto.nome,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'R\$${produto.preco.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton.icon(
                          label: Text(
                            'Adicionar',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            adicionarAoCarrinho(produto.preco);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal[800],
                          ),
                          icon: Icon(Icons.shopping_cart, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal[800],
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.attach_money, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                'Total: R\$${total.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
