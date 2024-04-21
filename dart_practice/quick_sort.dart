import 'dart:io';

void main(List<String> args) {
  List<int> arr = List.filled(args.length, 0);
  for (int i = 0; i < args.length; i++) {
    arr[i] = int.parse(args[i]);
  }
  quick_sort(arr, 0, arr.length - 1);
  print(arr);
}

void quick_sort(List<int> arr, int low, int high) {
  if (low < high) {
    int p = partition(arr, low, high);
    quick_sort(arr, low, p - 1);
    quick_sort(arr, p + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (pivot > arr[j]) {
      i++;
      swap(arr, i, j);
    }
  }
  swap(arr, high, i + 1);
  return i + 1;
}

void swap<T>(List<T> arr, int i, int j) {
  T temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
