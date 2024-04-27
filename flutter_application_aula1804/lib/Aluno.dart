class Aluno {
  String _nome = "";
  String _email = "";
  String _tipocurso = "";
  List<String> _interesses = [];
  bool notificacoesEmail = false;

  Aluno(this._nome, this._email, this._tipocurso, this._interesses, this.notificacoesEmail);

 String get nome => this._nome;

 set nome(String value) => this._nome = value;

  get email => this._email;

 set email( value) => this._email = value;

  get tipocurso => this._tipocurso;

 set tipocurso( value) => this._tipocurso = value;

  get interesses => this._interesses;

 set interesses( value) => this._interesses = value;

  get getNotificacoesEmail => this.notificacoesEmail;

 set setNotificacoesEmail( notificacoesEmail) => this.notificacoesEmail = notificacoesEmail;



}