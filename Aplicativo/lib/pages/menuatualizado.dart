import 'package:WorkSearch/pages/home.page.dart';
import 'package:WorkSearch/pages/login.page.dart';
import 'package:WorkSearch/pages/navegacao_telas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.lightBlue,
                child: Text('W',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              horizontalTitleGap: 20,
              title: Text("WorkSearch",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffB388FF),
                  )),
            ),
            const Divider(
              height: 5,
              thickness: 1,
              indent: 1,
              endIndent: 1,
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(Icons.home_outlined, size: 30),
              title: Text("Início",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Tela inicial"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pageconfiguration()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(Icons.favorite_border_outlined, size: 30),
              title: Text("Favoritos",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Meus favoritos"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favoritos()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(Icons.notifications_active_outlined, size: 30),
              title: Text("Notificações",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Central de notificações"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notificacoes()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(Icons.history_outlined, size: 30),
              title: Text("Histórico",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Meus históricos"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Historico()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined, size: 30),
              title: Text("Minha Conta",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Dados pessoais"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MinhaConta()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(Icons.help_outline_outlined, size: 30),
              title: Text("Ajuda",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Central de ajuda"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ajuda()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black26,
            ),
            ListTile(
                leading: Icon(Icons.logout_outlined, size: 30),
                title: Text("Sair",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54)),
                subtitle: Text("Sair da conta"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 10,
              color: Colors.white, //Espaço em branco...
            ),
            ListTile(
              horizontalTitleGap: 10,
              title: Text("Versão 1.0",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue)),
              subtitle: Text("Aplicativo atualizado",
                  style: TextStyle(color: Colors.blueGrey)),
            ),
          ],
        ),
      ),
    );
  }
}

class MinhaConta extends StatefulWidget {
  @override
  _MinhaContaState createState() => _MinhaContaState();
}

class _MinhaContaState extends State<MinhaConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Minha Conta"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.manage_accounts_outlined),
              title: Text("Informações pessoais",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Nome completo e CPF"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InformacoesPessoais()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.contact_phone_outlined),
              title: Text("Dados de contato",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("E-mail e telefone de contato"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DadoContato()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Endereço",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Meu endereço de serviço"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Endereco()));
              },
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            ListTile(
                leading: Icon(Icons.reply_outlined),
                title: Text("Voltar",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54)),
                subtitle: Text("Voltar para os menus laterais"),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}

class InformacoesPessoais extends StatefulWidget {
  @override
  _InformacoesPessoaisState createState() => _InformacoesPessoaisState();
}

class _InformacoesPessoaisState extends State<InformacoesPessoais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Informações Pessoais"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}

class DadoContato extends StatefulWidget {
  @override
  _DadoContatoState createState() => _DadoContatoState();
}

class _DadoContatoState extends State<DadoContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dados de Contato"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}

class Endereco extends StatefulWidget {
  @override
  _EnderecoState createState() => _EnderecoState();
}

class _EnderecoState extends State<Endereco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Endereço"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}

class Favoritos extends StatefulWidget {
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Favoritos"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue,
                child: Text(
                  'T',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              title: Text('Trocar chuveiro!',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                  'Estou a procura de um profissional que concerta chuveiro, porque meu chuveiro queimou certo na época do frio!!!'),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue,
                child: Text(
                  'T',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              title: Text('Trocar piso da área!',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                  'Estou a procura de um profissional que possa estar realizando a troca do piso da minha área!!!'),
            )
          ],
        ),
      ),
    );
  }
}

class Notificacoes extends StatefulWidget {
  @override
  _NotificacoesState createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Notificações"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Você não possui nenhuma notificação.',
            ),
          ],
        ),
      ),
    );
  }
}

class Historico extends StatefulWidget {
  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Históricos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Você não possui histórico de pesquisa.',
            ),
          ],
        ),
      ),
    );
  }
}

class Ajuda extends StatefulWidget {
  @override
  _AjudaState createState() => _AjudaState();
}

class _AjudaState extends State<Ajuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ajuda"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Divider(
              height: 20,
              thickness: 1,
              indent: 70,
              endIndent: 70,
              color: Colors.white,
            ),
            Text("Precisa de mais alguma ajuda?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 70,
              endIndent: 70,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.contact_phone_outlined, size: 30),
              title: Text("Fale Conosco",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("Contatos"),
              trailing: Icon(Icons.chevron_right_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FaleConosco()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FaleConosco extends StatefulWidget {
  @override
  _FaleConoscoState createState() => _FaleConoscoState();
}

class _FaleConoscoState extends State<FaleConosco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Fale Conosco"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Divider(
              height: 20,
              thickness: 1,
              indent: 70,
              endIndent: 70,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.call, size: 30),
              title: Text("Telefone Fixo",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("(65) 3344-0001", style: TextStyle(fontSize: 17)),
            ),
            ListTile(
              leading: Icon(Icons.alternate_email_outlined, size: 30),
              title: Text("E-mail",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("suporte@worksearch.com.br",
                  style: TextStyle(fontSize: 17)),
            ),
            ListTile(
              leading: Icon(Icons.question_answer_outlined, size: 30),
              title: Text("WhatsApp",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
              subtitle: Text("(65) 99699-9999", style: TextStyle(fontSize: 17)),
            ),
          ],
        ),
      ),
    );
  }
}
