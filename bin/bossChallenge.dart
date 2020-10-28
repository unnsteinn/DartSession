/* Matrix multiplication

   Write a function that multiplies two matrices together.
   For matrix multiplication, the number of
   columns in the first matrix must be equal to the
   number of rows in the second matrix. The result
   matrix, known as the matrix product, has the number
   of rows of the first and the number of
   columns of the second matrix.

   There is a formal definition of matrix multiplication on wikipedia:
   https://en.wikipedia.org/wiki/Matrix_multiplication
   https://www.mathsisfun.com/algebra/matrix-multiplying.html

   Output Null if the matrices cannot be multiplied together.
   Use the previous function
   'is_valid_matrix' to validate the two matrices before you multiply them.

 */

void main(){
  List<List<int>> matrix1 = [
    [1,2,3],
    [4,5,6]
  ];

  List<List<int>> matrix2 = [
    [1,2],
    [3,4],
    [5,6]
  ];

  print(matrix_multiply(matrix1, matrix2));
  // Should return [[22,28],[49,64]]

  print(matrix_multiply(matrix2, [[]]));
  // Should Return null

  print(matrix_multiply(matrix2, matrix2));
  // Should return null
}

List<int> GetColumn(List<List<int>> matrix, int colNumber){
  List<int> column = [];
  for(List<int> row in matrix){
    column.add(row[colNumber]);
  }
  return column;
}

int DotProduct(List<int> row, List<int> col){
  int sum = 0;
  for(int idx = 0; idx < row.length; idx++){
      sum = sum + row[idx] * col[idx];
  }
  return sum;
}


List<List<int>> MatrixInitialize(int row, int col){
  List<int> emptyRow = [];
  for(int idx=0; idx < col; idx++){
    emptyRow.add(0);
  }
  List<List<int>> matrix = [];
  for(int idx=0; idx < row; idx++){
    matrix.add([...emptyRow]);
  }

  return matrix;
}

// m is the first matrix and n is the second
List<List<int>> matrix_multiply(List<List<int>> m, List<List<int>> n){

  // Check validity
  int mCols = m[0].length;
  int mRows = m.length;
  int nCols = n[0].length;
  int nRows = n.length;

  if( (mRows != nCols) || (nRows != mCols)  || mCols == 0 || nCols == 0){
    return null;
  }

  // Loop through each column in n and each row in m
  List<List<int>> answer = MatrixInitialize(mRows, nCols);

  for(int col=0; col < nCols; col++){
    for(int row=0; row < mRows; row++){
      answer[row][col] = DotProduct(m[row], GetColumn(n, col));
    }
  }

  return answer;

}


