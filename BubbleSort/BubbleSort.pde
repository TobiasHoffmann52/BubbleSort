void setup() {
  int[] list = { 1, 2, 6, 3, 8, 1, 2, 9, 7, 6};
  printList(list);
  bubbleSort(list);
  printList(list);
}

void bubbleSort(int[] list) {
  //1. Hvis list[i] > list[i+1], byt rundt
  //2. Sæt i=i+1 og gentag 1 - indtil i+1>= liste længden.
  //3. Hvis antallet af "swaps" > 0 gentag ellers Stop! 
  int antalSwaps = 1;
  while (antalSwaps>0) {
    antalSwaps = 0;
    for (int i = 0; i < list.length-1; i++) {
      if (list[i] > list[i+1]) {
        swap(list, i, i+1);
        antalSwaps++;
      }
    }
  }
}

void swap(int[] list, int i1, int i2) {
  //Denne funktion modtager arrayet "liste", index i1 og index i2. 
  //Den retunerer ikke noget men bytter om på element i1 og i2.
  int temp;
  temp = list[i1];
  list[i1]=list[i2];
  list[i2]=temp;
}

void printList(int[] list) {
  //Udskriver en array kaldet "liste" på en linje.
  for (int e : list) print(e + " "); 
  println();
}
