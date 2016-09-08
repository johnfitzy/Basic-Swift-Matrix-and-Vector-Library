import Foundation

//
//  MatrixArithmetic.swift
//  Assignment1.1
//
//  Created by Matt Barnes and John Fitzgerald on 2/09/16.
//  Copyright © 2016 John Fitzgerald and Matt Barnes. All rights reserved.
//

/**
 Multiplies two matrices together and returns the result
 
 - parameter lhs: Matrix<T> to multiply with rhs
 - parameter rhs: Matrix<T> to multiply with lhs
 
 - returns: returns result of lhs*rhs
 */
public func *<T:MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T>{
    assert(lhs.columns == rhs.rows,"Multiplication not possible: Matrices of wrong dimension")
    let result = Matrix<T>(rows: lhs.rows,columns: rhs.columns)
    for x in 0 ..< result.rows{
        for y in 0 ..< result.columns{
            var sum :T = T()
            for z in 0 ..< rhs.rows{
                sum = sum + lhs[x,z]*rhs[z,y]
            }
            result[x,y] = sum
        }
    }
    return result
}

/**
 Adds two matrices together and returns the result
 
 - parameter lhs: Matrix<T> to multiply with rhs
 - parameter rhs: Matrix<T> to multiply with lhs
 
 - returns: returns result of lhs+rhs
 */
public func +<T:MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T>{
    assert((lhs.columns == rhs.columns) && (lhs.rows==rhs.rows),"Addition not possible: Matrices not same dimension")
    let result = Matrix<T>(rows:lhs.rows,columns:rhs.columns)
    for x in 0 ..< result.rows{
        for y in 0 ..< result.columns{
            result[x,y] = lhs[x,y]+rhs[x,y]
        }
    }
    return result
}

/**
 Subtracts rhs Matrix from lhs Matrix and returns the result
 
 - parameter lhs: Matrix<T> to subtract by rhs
 - parameter rhs: Matrix<T> to subtract from lhs
 
 - returns: returns result of lhs-rhs
 */
public func -<T:MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T>{
    assert((lhs.columns == rhs.columns) && (lhs.rows==rhs.rows),"Subtraction not possible: Matrices not same dimension")
    let result = Matrix<T>(rows:lhs.rows,columns:rhs.columns)
    for x in 0 ..< result.rows{
        for y in 0 ..< result.columns{
            result[x,y] = lhs[x,y]-rhs[x,y]
        }
    }
    return result
}
/**
 Adds Matrix and scalar and returns the result
 
 - parameter lhs: Matrix<T> to add to rhs
 - parameter rhs: scalar to add to lhs
 
 - returns: returns result of lhs+rhs
 */
public func +<T:MatrixData>(lhs: Matrix<T>, rhs:T) -> Matrix<T>{
    let result = Matrix<T>(rows:lhs.rows,columns:lhs.columns)
    for x in 0 ..< result.rows{
        for y in 0 ..< result.columns{
            result[x,y] = lhs[x,y]+rhs
        }
    }
    
    return result
}
/**
 Subtracts scalar from Matrix and returns the result
 
 - parameter lhs: Matrix<T> to subtract by rhs
 - parameter rhs: scalar to subtract from lhs
 
 - returns: returns result of lhs+rhs
 */
public func -<T:MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T>{
    let result = Matrix<T>(rows:lhs.rows,columns:lhs.columns)
    for x in 0 ..< result.rows{
        for y in 0 ..< result.columns{
            result[x,y] = lhs[x,y]-rhs
        }
    }
    return result
}
/**
 Multiplies Matrix and scalar and returns the result
 
 - parameter lhs: Matrix<T> to multiply by rhs
 - parameter rhs: scalar to multiply by lhs
 
 - returns: returns result of lhs*rhs
 */
public func *<T:MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T>{
    let result = Matrix<T>(rows:lhs.rows,columns:lhs.columns)
    for x in 0 ..< result.rows{
        for y in 0 ..< result.columns{
            result[x,y] = lhs[x,y]*rhs
        }
    }
    return result
}

/**
 Divides Matrix by scalar and returns the result
 
 - parameter lhs: Matrix<T> to divide by rhs
 - parameter rhs: scalar to divide lhs by.
 
 - returns: returns result of lhs/rhs
 */
public func /<T:MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T>{
    let result = Matrix<T>(rows:lhs.rows,columns:lhs.columns)
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
    for x in 0 ..< result.rows{
        for y in 0 ..< result.columns{
            result[x,y] = lhs[x,y]/rhs
        }
    }
    return result
}




