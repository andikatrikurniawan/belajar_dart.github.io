void main(){
   print("\nCase 5 : Membuat Custom Exception");
    try{
      depositMoney( -200);
    }catch(e){
      if(e is Custom){
        print(e.errorMessage());
      }
    }finally{
      print("Telah Selesai");
    }
}

class Custom implements Exception{
      String errorMessage(){
        return 'Custom Exception: Jumlah Deposit Tidak Boleh Negatif.';
      }
    }
    void depositMoney(int amount){
      if(amount < 0){
        throw Custom();
      }
}  