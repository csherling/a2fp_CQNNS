class CLLNode<E>{
 
  E car;
  CLLNode<E> prev;
  CLLNode<E> next;
  
  CLLNode(E newCar, CLLNode<E> newPrev, CLLNode<E> newNext){
    car = newCar;
    prev = newPrev;
    next = newNext;
  }
  
  E setCar(E newCar){
    E temp = getCar();
    car = newCar;
    return temp;
  }
  
  E getCar(){
    return car; 
  }
  
  CLLNode<E> setPrev(CLLNode<E> newPrev){
    CLLNode<E> temp = getPrev();
    prev = newPrev; 
    return temp;
  }
  
  CLLNode<E> getPrev(){
   return prev;
  }

  CLLNode<E> setNext(CLLNode<E> newNext){
    CLLNode<E> temp = getNext();
    next = newNext; 
    return temp;
  }
  
  CLLNode<E> getNext(){
     return next;
  }
  
  //CLLNode<E>
  
}