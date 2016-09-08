import Foundation

//
//  Vector.swift
//  Assignment1.1
//
//  Created by Matt Barnes and John Fitzgerald on 2/09/16.
//  Copyright © 2016 John Fitzgerald and Matt Barnes. All rights reserved.
//


/// A Custom Vector object that can hold Values of type MatrixData
public class Vector<T: MatrixData>: Matrix<T>, BasicVector,VectorToMatrix, VectorArithmetic {
    /**
     Initializer creates a Vector of desired sixr
     
     - parameter size: the desired size of the Vectoe

     */
    init(size: Int){
        super.init(rows: 1, columns: size)
    }
    /**
     Initializer creates a Vector from an array
     
     - parameter array: array to make Vector from

     */
    override init(array: [[T]]){
        assert(array.count == 1,"Wrong amount of rows for vector - please try using Matrix object")
        super.init(array: array)
    }
    /// Computed property. Provides a String description of the Vector.
    public override var description: String {
        return "vector -> \(super.description)"
    }
    /// Computed property. Returns the size of the Vector
    public var size: Int {
        get{return super.columns}
    }
    /**
     Returns/sets the element value at the given index
     
     - parameter index: the column position of the element
     
     - returns: the element at the position index
     */
    public subscript(index: Int) -> T{
        get{return self[0,index]}
        set{self[0,index] = newValue}
    }
    
    /**
     Computes the dot product of the vector with another vector
     
     - parameter v: input Vector
     
     - returns: returns value of type T
     */
    public func dot(v: Vector<T>) -> T{
        return self*v
    }
    
    /**
     Returns a new object instance that is a copy of the current vector.
     Overides Matrix copy()
     
     - returns: a copy of Vector
     */
    public override func copy() -> Vector<T>{
        return Vector<T>(array: self._array)
    }
    /// Computed property. Converts Vector to Matrix
    public var matrixview : Matrix<T>{
        get{
            return self as Matrix<T>
        }
    }
}
