
class Note{
  int _id;
  String _title;
  String _decsription;
  String _date;
  int _priority;
  Note(this._title,this._date,this._priority,[this._decsription]);
  Note.withId(this._id,this._title,this._date,this._priority,[this._decsription]);


  int get id => _id;

  String get title => _title;

  String get decsription => _decsription;

  int get priority => _priority;

  String get date => _date;

  set title(String newTitle){
    if(newTitle.length<225){
      this._title= newTitle;
    }
  }

  set description(String newDescription){
    if(newDescription.length<225){
      this._decsription= newDescription;
    }
  }

  set priority(int newPriority){
    if(newPriority >= 1 && newPriority <= 2){
      this._priority= newPriority;

    }
  }

  set date(String newDate){
    this._date=newDate;
  }
  // Convert Node Object into Map Object
Map<String,dynamic> toMap(){
    var map = Map<String, dynamic>();
    if(id!=null) {
      map['id'] = _id;
    }
    map['title']=_title;
    map['description']=_decsription;
    map['priority'] = _priority;
    map['date']=_date;

    return map;
}

// Extract Node Object from Map Object
Note.fromMapObject(Map<String, dynamic>map){
    this._id=map['id'];
    this._title= map['title'];
    this._decsription = map['description'];
    this._priority= map['priority'];
    this._date = map['date'];
}

}