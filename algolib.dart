/*Dart algorithms library*/

bin_equal(List<int> arr){

}

sieve(int MAX){
  List<bool> sieve = new List(MAX);
  for(int i=2; i<MAX; i++){sieve[i] = true;}
  List<int> answer = [2];
  for(int i=3; i*i<MAX; i+=2){
    for(int j=i*i; j<MAX && sieve[i]; j+=i){
      sieve[j] = false;
    }
  }
  for(int i=3; i<MAX; i+=2){
    if(sieve[i]){answer.add(i);}
  }
  return answer;
}

main(){
  List<int> primes = sieve(111);
  for(int i=0; i<primes.length; i++){print(primes[i]);}
}
