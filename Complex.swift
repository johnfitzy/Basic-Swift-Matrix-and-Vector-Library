//
//  Complex.swift
//  Assignment1.1
//
//  Created by John Fitzgerald and Matt Barnes on 1/08/16.
//  Copyright © 2016 John Fitzgerald and Matt Barnes. All rights reserved.
//

/// Represents a Complex number
final class Complex : MatrixData {
    

    /// real part
    var real: Float;
    /// imaginary part
    var imag: Float;
    /// Computed property. The magnitude of the complex number
    var magnitude: Float {
        get{
            return self.real * self.real + self.imag * self.imag
        }
    }
    
    /// Computed property. Returns a String representation of the Complex number
    var description: String {
        if self.imag > 0{
            return "\(self.real)+\(self.imag)i"
        }
        return "\(self.real)\(self.imag)i"
    }
    /**
     Designated initialiser
     
     - parameter real: Real part of the numerator
     - parameter imag: Imaginary part of the number
     */
    init(real : Float, imag : Float) {
        self.real = real
        self.imag = imag
        
    }
    
    /**
     Default initialiser creates a 0+0i Complex number
     */
    convenience init() {
        self.init(real: 0, imag: 0)
    }
    
    
    /**
     Adds two complex numbers.
     
     - parameter c1: Complex number to add to
     - parameter c2: Complex number to be added
     
     - returns: The result of c1 + c2.
     */
    static func add(c1: Complex, to c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex(real: c1.real + c2.real, imag: c1.imag + c2.imag)
        
    }
    
    /**
     Subtract a complex number from a complex number.
     
     - parameter c1: Complex number to subtract
     - parameter c2: Complex number to subtract from
     
     - returns: The result of c2 - c1.
     */
    static func subtract(c1: Complex, from c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex(real: c1.real - c2.real, imag: c1.imag - c2.imag)
    }
    
    /**
     Multiply a complex number by a complex number.
     
     - parameter c1: Complex number to multiply
     - parameter c2: Complex number to multiply by
     
     - returns: The result of c1*c2.
     */
    static func multiply(c1: Complex, by c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex(real: (c1.real * c2.real) - (c1.imag * c2.imag), imag: c1.real * c2.imag + c1.imag * c2.real)
    }
    
    /**
     Divide a complex number by a complex number.
     
     - parameter c1: Complex number to divide
     - parameter c2: Complex number to divide by
     
     - returns: The result of c1/c2.
     */
    static func divide(c1: Complex, by c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex(real: (c1.real * c2.real + c1.imag * c2.imag) / c2.magnitude, imag: (c1.imag * c2.real - c1.real * c2.imag) / c2.magnitude)
    }
    
    /**
     Creates a copy of the Complex number
     
     - returns: a new Complex number which is a copy of self
     */
    func copy() -> Complex {
        return Complex(real: self.real, imag: self.imag)
    }
}



/**
  Operator between two Complex numbers
 
 - parameter c1: Complex number c1
 - parameter c2: Complex number to add to c1
 
 - returns: c1 + c2
 */
func +(c1: Complex, c2: Complex) -> Complex {
    return Complex.add(c1, to: c2)
    
}

/**
  Operator between two Complex numbers
 
 - parameter c1: Complex number c1
 - parameter c2: Complex number to subtract from c1
 
 - returns: c1 - c2
 */
func -(c1: Complex, c2: Complex) -> Complex {
    return Complex.subtract(c1, from: c2)
    
}

/**
 Operator between two Complex numbers
 
 - parameter c1: Complex number c1
 - parameter c2: Complex to multiply c1 by
 
 - returns: c1 * c2
 */
func *(c1: Complex, c2: Complex) -> Complex {
    return Complex.multiply(c1, by: c2)
}

/**
 Operator between two Complex numbers
 
 - parameter c1: Complex number c1
 - parameter c2: Complex number to divide c1 by
 
 - returns: c1 / c2
 */
func /(c1: Complex, c2: Complex) -> Complex {
    return Complex.divide(c1, by: c2)
}

/**
 Operator between Complex number and Float
 
 - parameter c1: Complex number c
 - parameter x: Float to add to c
 
 - returns: c1 + x
 */
func +(c: Complex, x: Float) -> Complex {
    return Complex.add(c, to: Complex(real: x, imag: 0))
}

/**
 Operator between Complex number and Float
 
 - parameter c: Complex number c
 - parameter x: Float to subtract from c
 
 - returns: c - x
 */
func -(c: Complex, x: Float) -> Complex {
    return Complex.subtract(c, from: Complex(real: x, imag: 0))
}
/**
 Operator between Complex number and Float
 
 - parameter c: Complex number c
 - parameter x: Float to multiply c by
 
 - returns: c * x
 */
func *(c: Complex, x: Float) -> Complex {
    return Complex.multiply(c, by: Complex(real: x, imag: 0))
}

/**
 Operator between Complex number and Float
 
 - parameter c: Complex number c
 - parameter x: Float to divide c by
 
 - returns: c / x
 */
func /(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex.divide(c, by: Complex(real: x, imag: 0))
}

/**
 Operator between two complex numbers
 
 - parameter c1: Complex number c1
 - parameter c2: Complex number to compare to c1
 
 - returns: c1 != c2
 */
func !=(c1:Complex, c2:Complex) -> Bool {
    return c1.real != c2.real || c1.imag != c2.imag
}

/**
 Operator between two complex numbers
 
 - parameter c1: Complex number c1
 - parameter c2: Complex number to compare to c1
 
 - returns: c1 == c2
 */
func ==(c1:Complex, c2:Complex) -> Bool {
    return c1.real == c2.real && c1.imag == c2.imag
}
