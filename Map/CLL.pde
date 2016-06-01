class CLL<E>{
 
  CLLNode<E> _head;
  int _size = 0;
  
  CLL(){
    _head = null;
    _size = 0;
  }
  
  int size() {
    return _size;
  }
  
  void add(E car){
    if(size() == 0){
      _head = new CLLNode<E>(car, null, null);
      _head.setNext(_head);
      _head.setPrev(_head);
    }
    else{
      CLLNode<E> temp = _head.getPrev();
      _head.setPrev( new CLLNode<E>( car, temp, _head) );
      temp.setNext( _head.getPrev() );
    }
    _size++;
  }
  
  public E get( int index ) {
    CLLNode<E> temp = _head;
      for( int i = 0; i < index % size(); i++ ){
        temp = temp.getNext();
      }
      return temp.getCar();
    }


    public E set( int index, E newCar ) {
      E ret;
      CLLNode<E> temp = _head;
      for( int i = 0; i < index % size(); i++ ){
        temp = temp.getNext();
      }
      ret = temp.setCar(newCar);
      return ret;
    }
    
    String toString() {
      String ret = "HEAD-> ";
      CLLNode<E> temp = _head;
      for( int i = 0; i < _size; i++ ) {
          ret += temp.getCar() + " <-> ";
          temp = temp.getNext();
      }
      if ( ret.length() > 7 ){
          ret = ret.substring( 0, ret.length() - 5 );
      }
      ret += " <--...back to HEAD";
      return ret;
    }
  
}