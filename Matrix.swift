import Foundation
//
//  Matrix.swift
//  Assignment1.1
//
//  Created by Matt Barnes and John Fitzgerald on 2/09/16.
//  Copyright © 2016 John Fitzgerald and Matt Barnes. All rights reserved.
//




/// A Custom Matrix object that can hold Values of type MatrixData
public class Matrix<T: MatrixData>: BasicMatrix, MatrixArithmetic, MatrixToVector, CustomStringConvertible {
    /// Array to store values
    var _array :[[T]]
    /// rows in _array
    private let _rows: Int
    /// cols in _array
    private let _columns: Int
    /**
     Convenience initializer, creates a Matrix of 0 rows and 0 columns
     */
    convenience init(){
        self.init(rows: 0, columns: 0)
    }
    /**
     Initializer makes Matrix with desired rows and columns
     
     - parameter rows:    number of rows desired in matrix
     - parameter columns: number of cols desired in matrix
     
     */
    init(rows: Int, columns: Int){
        // this must be here
        assert(rows >= 0 && columns >= 0, "rows and columns must be >= 0")
        self._rows = rows
        self._columns = columns
        self._array = [[T]](count:rows,repeatedValue : [T](count:columns,repeatedValue:T()))
    }
    /**
     Initializer makes a Matrix with a 2d array
     
     - parameter array: array of values to be put in matrix
     */
    init(array: [[T]]){
        self._array = array
        self._rows = array.count
        self._columns = array[0].count
    }
    
    /// Computed property: Description returns string representation of Matrix
    public var description: String {
        
        var myString = ""
        for x in 0 ..< rows {
            for y in 0 ..< columns {
                myString += String(self._array[x][y])
                myString += " "
            }
            myString += "\n"
        }
        return myString
        
    }
    
    
    /**
     Returns a string representation of the type of Matrix
     
     - returns: type of Matrix
     */
    func type() -> String {
        return "\(T.self)"
    }
    
    /// rows returns the number of rows in Matrix
    public var rows:Int{get{return self._rows}}
    /// columns returns the number of columns in Matrix
    public var columns: Int{get{return self._columns}}
    
    
    /// Computed property. Transpose returns a transpose of self
    public var transpose: Matrix<T> {
        get{
            if(_array.count == _array[0].count){
                for index in 0..._array[0].count - 2{
                    for m in index + 1..._array[0].count - 1{
                        let temp = _array[index][m]
                        _array[index][m] = _array[m][index]
                        _array[m][index] = temp
                    }
                }
            }else{
                let t = Matrix<T>(rows: self.columns,columns: self.rows)
                for x in 0 ..< rows{
                    for y in 0 ..< columns{
                        t[y,x] = self._array[x][y]
                    }
                }
                return t
            }
            return self
        }
    }
    /**
        Returns/sets the element value at the given row and column index     
     - parameter row:    row
     - parameter column: column
     
     - returns: returns values in Matrix position
     */
    public subscript(row: Int, column: Int) -> T{
        get{
            assert(row > -1 && row < rows,"Invalid row request")
            assert(column > -1 && column < columns ,"Invalid column request")
            return self._array[row][column]
        }
        set{
            assert(row > -1 && row < rows,"Invalid row request")
            assert(column > -1 && column < columns ,"Invalid column request")
            self._array[row][column] = newValue
        }
    }

    /**
     Creates a copy of Matrix
     
     - returns: new Matrix
     */
    public func copy() -> Matrix<T> {
        return Matrix<T>(array: self._array)
    }
    /// Computed property. Vectorview converts Matrix to Vector
    public var vectorview : Vector<T>{
        get{
            assert(self._rows == 1, "not the correct number of row")
            let vector = Vector<T>(array: self._array)
            return vector
        }
    }
    /**
     Selects row vector from matrix
     
     - parameter: Index of desired row
     
     - returns: Vector
     */
    public func row(index: Int) -> Vector<T>{
        assert(index<self._array.count&&index > -1,"index out of bounds")
        let vector : Vector<T> = Vector<T>(array: Array(count:1,repeatedValue:self._array[index]))

        return vector
    }
    /**
     Selects column vector from matrix
     
     - parameter index: desired index to create Vector from
     
     - returns: Vector
     */
    public func column(index: Int) -> Vector<T>{
        assert(index<self._array[0].count&&index > -1,"index out of bounds")
        let vector = Vector<T>(size: self.rows)
        for i in 0 ..< vector.size{
            let x = self[i,index]
            vector[i] = x
            }
        return vector
        
    }
}



