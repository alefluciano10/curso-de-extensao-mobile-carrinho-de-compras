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
  final String imageUrl;

  Produto(this.nome, this.preco, this.imageUrl);
}

class CarrinhoComprasPage extends StatefulWidget {
  const CarrinhoComprasPage({super.key});

  @override
  State<CarrinhoComprasPage> createState() => _CarrinhoComprasPageState();
}

class _CarrinhoComprasPageState extends State<CarrinhoComprasPage> {
  final List<Produto> produtos = [
    Produto(
      'banana',
      1.89,
      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.naturaldaterra.com.br%2Fbanana-prata-kg%2Fp&psig=AOvVaw2Oj9jmfB3xw-03s0_Le3ec&ust=1747453629752000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCLppKKp40DFQAAAAAdAAAAABAE',
    ),
    Produto(
      'Morango',
      3.25,
      'https://www.google.com/imgres?q=Morango&imgurl=https%3A%2F%2Fmercadoorganico.com%2F6423-large_default%2Fmorango-organico-250g-osm.jpg&imgrefurl=https%3A%2F%2Fmercadoorganico.com%2Fhortifruti-organico%2F4127-morango-organico-250g-osm-0618341542983.html&docid=ZHX9dtvsVwQU6M&tbnid=DeBm3DVGowD8eM&vet=12ahUKEwiBxdbAiqeNAxWkJrkGHVl_DNYQM3oECB0QAA..i&w=1000&h=1000&hcb=2&ved=2ahUKEwiBxdbAiqeNAxWkJrkGHVl_DNYQM3oECB0QAA',
    ),
    Produto(
      'Kiwi',
      2.10,
      'https://www.google.com/imgres?q=Kiwi&imgurl=https%3A%2F%2Ftrela.com.br%2F_next%2Fimage%3Furl%3Dhttps%253A%252F%252Fprod-zapt-images.s3.sa-east-1.amazonaws.com%252Fproducts%252F842684d4-ad6e-4138-b4e2-f00b6f9cfdb6-kiwiverde-quitandatomio-12332.1.png%26w%3D3840%26q%3D75&imgrefurl=https%3A%2F%2Ftrela.com.br%2Fproduto%2Fkiwi-verde-500g-12332&docid=b0hQS9BKCizkZM&tbnid=M1q8PVFA2DEHFM&vet=12ahUKEwjPkKDYiqeNAxV6CrkGHa-6EkQQM3oECFsQAA..i&w=2400&h=2000&hcb=2&ved=2ahUKEwjPkKDYiqeNAxV6CrkGHa-6EkQQM3oECFsQAA',
    ),
    Produto(
      'Maça',
      1.99,
      'https://www.google.com/imgres?q=ma%C3%A7a&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F1%2F15%2FRed_Apple.jpg%2F330px-Red_Apple.jpg&imgrefurl=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FMa%25C3%25A7%25C3%25A3&docid=nQ7-_pDQE8_h7M&tbnid=RGakCff1W1RNzM&vet=12ahUKEwjGh9r3iqeNAxU4FLkGHX5wAa8QM3oECB0QAA..i&w=330&h=299&hcb=2&ved=2ahUKEwjGh9r3iqeNAxU4FLkGHX5wAa8QM3oECB0QAA',
    ),
    Produto(
      'Pêra',
      2.99,
      'https://www.google.com/imgres?q=pera&imgurl=https%3A%2F%2Fwww.naturaldaterra.com.br%2F_next%2Fimage%3Furl%3Dhttps%253A%252F%252Fnaturalterra.vtexassets.com%252Farquivos%252Fids%252F163024%252FPera-Williams-Unidade.jpg%253Fv%253D638671093808830000%26w%3D320%26q%3D75&imgrefurl=https%3A%2F%2Fwww.naturaldaterra.com.br%2Fpera-williams-unidade%2Fp&docid=yRE1Uv4GRutFrM&tbnid=_LXl9Gy3-DKMxM&vet=12ahUKEwj2mb-Yi6eNAxUlCrkGHX8iFYcQM3oECBYQAA..i&w=320&h=320&hcb=2&ved=2ahUKEwj2mb-Yi6eNAxUlCrkGHX8iFYcQM3oECBYQAA',
    ),
    Produto(
      'Manga',
      2.70,
      'https://www.google.com/imgres?q=manga&imgurl=https%3A%2F%2Fstatic.mundoeducacao.uol.com.br%2Fmundoeducacao%2F2021%2F05%2Fmanga.jpg&imgrefurl=https%3A%2F%2Fmundoeducacao.uol.com.br%2Fbiologia%2Fmanga.htm&docid=1DcmwXVP4DtmgM&tbnid=N85vTKevDr_wkM&vet=12ahUKEwi92Ou3i6eNAxXKLLkGHVIVFp0QM3oECB0QAA..i&w=600&h=400&hcb=2&ved=2ahUKEwi92Ou3i6eNAxXKLLkGHVIVFp0QM3oECB0QAA',
    ),
    Produto(
      'Goiaba',
      3.50,
      'https://www.google.com/imgres?q=goiaba&imgurl=https%3A%2F%2Fs1.static.brasilescola.uol.com.br%2Fbe%2Fconteudo%2Fimages%2Ffruto-polpa-rosada-apta-para-consumo-537e5dda94063.jpg&imgrefurl=https%3A%2F%2Fbrasilescola.uol.com.br%2Ffrutas%2Fgoiaba.htm&docid=vqrXJ2LH8VT7HM&tbnid=qszNOKkyr9FgFM&vet=12ahUKEwimie_Qi6eNAxWtrpUCHclgAdMQM3oECG4QAA..i&w=300&h=201&hcb=2&ved=2ahUKEwimie_Qi6eNAxWtrpUCHclgAdMQM3oECG4QAA',
    ),
    Produto(
      'Uva',
      1.99,
      'https://www.google.com/imgres?q=uva&imgurl=https%3A%2F%2Fcdn.awsli.com.br%2F496%2F496853%2Fproduto%2F37100363%2Fmy-project-1---2023-05-13t182519-771-moh6ce2zg7.png&imgrefurl=https%3A%2F%2Fwww.dancruzplantas.com.br%2Fuva-francesa-preta-muda-enxertada&docid=_AkaDKKkAjFHkM&tbnid=YPRIcEDtBnpvEM&vet=12ahUKEwij9d7ni6eNAxWrrZUCHb7SDVAQM3oECBcQAA..i&w=1000&h=1000&hcb=2&ved=2ahUKEwij9d7ni6eNAxWrrZUCHb7SDVAQM3oECBcQAA',
    ),
    Produto(
      'Ameixa',
      2.99,
      'https://www.google.com/imgres?q=ameixa&imgurl=https%3A%2F%2Fcdn.awsli.com.br%2F600x450%2F18%2F18885%2Fproduto%2F1723476%2F27e1359cdf.jpg&imgrefurl=https%3A%2F%2Fwww.sementeorganica.com%2Fproduto%2Fmuda-de-ameixa-preta-enxertada-prunus-domestica.html&docid=QCiVUswcoQy5aM&tbnid=_Gy7XRZXerkq3M&vet=12ahUKEwiB48uejKeNAxV4qZUCHd1pBwIQM3oECBcQAA..i&w=600&h=450&hcb=2&ved=2ahUKEwiB48uejKeNAxV4qZUCHd1pBwIQM3oECBcQAA',
    ),
    Produto(
      'Amora',
      2.99,
      'https://www.google.com/imgres?q=amora&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fcc%2FBlackberries_%2528Rubus_fruticosus%2529.jpg%2F250px-Blackberries_%2528Rubus_fruticosus%2529.jpg&imgrefurl=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FAmora&docid=o9yHkjC1XLNJSM&tbnid=C5cV4FrE5sCjcM&vet=12ahUKEwjfrPO8jKeNAxUkBLkGHdR3AO0QM3oECGUQAA..i&w=250&h=167&hcb=2&ved=2ahUKEwjfrPO8jKeNAxUkBLkGHdR3AO0QM3oECGUQAA',
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Carrinho de Compras',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
