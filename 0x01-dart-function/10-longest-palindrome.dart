bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  int maxLength = 0;
  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);

      if (isPalindrome(substring) && substring.length > maxLength) {
        maxLength = substring.length;
        longest = substring;
      }
    }
  }

  return longest;
}
