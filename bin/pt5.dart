

// Is it a valid matrix?

// Write a function that determines if the given list of lists is valid, meaning that for each row, it has
// the same number of columns


void main(){

  print(is_valid_matrix([[1,2,3],[4,5,6],[7,8,9]]));
  // Should output True


  print(is_valid_matrix([[1,2,3],[4,5],[7,8,9]]));
  // Should output False
  // because the second row only has two values, while the other ones

}

bool is_valid_matrix(List<List<int>>matrix){
  // your code here
  return ....
}
