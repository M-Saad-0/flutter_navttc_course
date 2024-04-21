void swap(int a, int b) {
  var (x, y) = (b, a);
  print('After swap: a = $x, b = $y');
}

void checkEvenOdd(int num) {
  String result = (num % 2 == 0) ? 'Even' : 'Odd';
  print('$num is $result');
}

void checkVowelConsonant(String char) {
  char = char.toLowerCase();
  var vowels = ['a', 'e', 'i', 'o', 'u'];
  String result = vowels.contains(char) ? 'Vowel' : 'Consonant';
  print('$char is a $result');
}

int getDaysInMonth(int month) {
  switch (month) {
    case 2:
      return 28;
    case 4:
    case 6:
    case 9:
    case 11:
      return 30;
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      return 31;
    default:
      return -1;
  }
}

int sumEvenNumbers(int start, int end) {
  int sum = 0;
  for (int num = start; num <= end; num++) {
    if (num % 2 == 0) {
      sum += num;
    }
  }
  return sum;
}

bool isPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void minmax(int a, int b, int c, int d) {
  int min = a;
  int max = a;
  List<int> numbers = [a, b, c, d];
  for (int num in numbers) {
    if (num < min) min = num;
    if (num > max) max = num;
  }
  print('Minimum: $min, Maximum: $max');
}

void printNumbers(int n) {
  if (n == 0) return;
  printNumbers(n - 1);
  print(n);
}

List<int> sumArrays(List<int> arr1, List<int> arr2) {
  if (arr1.length != arr2.length) {
    print('Arrays must have the same size.');
    return [];
  }
  List<int> sum = [];
  for (int i = 0; i < arr1.length; i++) {
    sum.add(arr1[i] + arr2[i]);
  }
  return sum;
}

void printArrayReverse(List<int> arr) {
  for (int i = arr.length - 1; i >= 0; i--) {
    print(arr[i]);
  }
}

String convertCaseAndCountSubstring(String str, String subStr) {
  if (subStr.length > str.length) {
    print('Substring cannot be larger than the string.');
    return str;
  }
  String newStr = '';
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (i + subStr.length <= str.length) {
      String sub = str.substring(i, i + subStr.length);
      if (sub == subStr) {
        count++;
      }
    }
    newStr += char ? char.toLowerCase() : char.toUpperCase();
  }
  print('New string: $newStr');
  print('Substring "$subStr" appears $count times.');
  return newStr;
}
