//
//  VectorArithmetic.swift
//  Assignment1.1
//
//  Created by Matt Barnes and John Fitzgerald on 2/09/16.
//  Copyright © 2016 John Fitzgerald and Matt Barnes. All rights reserved.
//


/**
 Multiplies two Vectors together and returns the result
 
 - parameter lhs: Vector<T> to multiply with rhs
 - parameter rhs: Vector<T> to multiply with lhs
 
 - returns: returns result of lhs*rhs
 */
public func *<T:MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> T{
    
    assert(lhs.size == rhs.size, "Cant compute dot product: Vectors are different dimensions")
    var sum: T = T()
    for i in 0..<rhs.size {
        sum = sum + lhs[i] * rhs[i]
    }
    return sum
}
/**
 Adds two Vectors together and returns the result
 
 - parameter lhs: Vector<T> to add to rhs
 - parameter rhs: Vector<T> to add to lhs
 
 - returns: returns result of lhs+rhs
 */
public func +<T:MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> Vector<T>{
    assert(lhs.size == rhs.size,"Addition not possible: Vectors not same dimension")
    let result = Vector<T>(size: lhs.size)
    for x in 0 ..< result.size{
            result[x] = lhs[x]+rhs[x]
        }
    return result
   
}
/**
 Subtracts rhs Vector from lhs Vector and returns the result
 
 - parameter lhs: Vector<T> to subtract by rhs
 - parameter rhs: Vector<T> to subtract from lhs
 
 - returns: returns result of lhs-rhs
 */
public func -<T:MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> Vector<T>{
    assert(lhs.size == rhs.size,"Subtraction not possible: Vectors not same dimension")
    let result = Vector<T>(size: lhs.size)
    for x in 0 ..< result.size{
        result[x] = lhs[x]-rhs[x]
    }
    return result
}
/**
 Adds Vector and scalar and returns the result
 
 - parameter lhs: Vector<T> to add to rhs
 - parameter rhs: scalar to add to lhs
 
 - returns: returns result of lhs+rhs
 */
public func +<T:MatrixData>(lhs: Vector<T>, rhs:T) -> Vector<T>{
    let result = Vector<T>(size:lhs.size)
    for x in 0 ..< result.size{
            result[x] = lhs[x]+rhs
        }
    return result
}
/**
 Subtracts scalar from Vector and returns the result
 
 - parameter lhs: Vector<T> to subtract by rhs
 - parameter rhs: scalar to subtract from lhs
 
 - returns: returns result of lhs+rhs
 */
public func -<T:MatrixData>(lhs: Vector<T>, rhs: T) -> Vector<T>{
    let result = Vector<T>(size:lhs.size)
    for x in 0 ..< result.size{
        result[x] = lhs[x]-rhs
    }
    return result
}
/**
 Multiplies Vector and scalar and returns the result
 
 - parameter lhs: Vector<T> to multiply by rhs
 - parameter rhs: scalar to multiply by lhs
 
 - returns: returns result of lhs*rhs
 */
public func *<T:MatrixData>(lhs: Vector<T>, rhs: T) -> Vector<T>{
    let result = Vector<T>(size:lhs.size)
    for x in 0 ..< result.size{
        result[x] = lhs[x]*rhs
    }
    return result
}
/**
 Divides Vector by scalar and returns the result
 
 - parameter lhs: Vector<T> to divide by rhs
 - parameter rhs: scalar to divide lhs by.
 
 - returns: returns result of lhs/rhs
 */
public func /<T:MatrixData>(lhs: Vector<T>, rhs: T) -> Vector<T>{
    
    let result = Vector<T>(size:lhs.size)
    if T() is Fraction{
        let v = rhs as! Fraction
        assert(v.decimal != 0,"cannot divide by zero")
    }
    else if T() is Double{
        let y = rhs as! Double
        assert(y != 0,"cannot divide by zero")
    }
    else if T() is Int{
        let y = rhs as! Int
        assert(y != 0,"cannot divide by zero")
        
    }
    else if T() is Float{
        let y = rhs as! Float
        assert(y != 0,"cannot divide by zero")
        
    }

    for x in 0 ..< result.size{
        result[x] = lhs[x]/rhs
    }
    return result
}
