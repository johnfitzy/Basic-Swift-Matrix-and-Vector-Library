//
//  Fraction.swift
//  Assignment1.1
//
//  Created by John Fitzgerald and Matt Barnes on 1/08/16.
//  Copyright © 2016 John Fitzgerald and Matt Barnes. All rights reserved.
//

import Foundation

/**
 Represents a number as a fraction of two integers
 */
final public class Fraction: MatrixData {

    /// Numerator of Fraction
    private let num: Int;
    /// Denominator of Fraction
    private let den: Int;
    /// returns Float representation of a Fraction
    var decimal: Float {
        get {
            return Float(self.num)/Float(self.den);
        }
    }
    /// Returns String description of Fraction
    public var description: String {
        if self.den == 1{
            return "\(self.num)"
        }
        return "\(self.num)/\(self.den)"
    }
    /**
     Intialises a Fraction with value zero
     */
    required public init() {
        self.num = 0
        self.den = 1
    }
    /**
     Intialises Fraction with specified Numerator and Denominator
     
     - parameter num: Numerator of Fraction
     - parameter den: Denominator of Fraction
     
     - returns: <#return value description#>
     */
    init(num : Int, den : Int) {
        
        assert(den != 0, "Denominator cannot be zero")
        
        var num = num;
        var den = den;
        
        if(den < 0) {
            num = -num;
            den = -den;
        }
        
        for gcd in (1...den).reverse() {
            if(num%gcd == 0 && den%gcd==0) {
                num /= gcd;
                den /= gcd;
                break;
            }
        }
        
        self.num = num
        self.den = den
    }
    
    /**
     Convenience initialiser
     
     Numerator is set to some value, denominator
     is set to 1.
     
     - parameter num: Numerator of Fraction
     */
    convenience init(num : Int) {
        self.init(num: num, den: 1);
    }

    
    /**
     Adds a fraction to current Fraction
     
     - parameter f: Fraction to add
     
     - returns: resulting fraction
     */
    func add(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den + self.den*f.num,
                        den: self.den*f.den)
    }
    /**
     Subtracts a fraction from current Fraction
     
     - parameter f: Fraction to subtract
     
     - returns: resulting fraction
     */
    func subtract(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num,
                        den: self.den*f.den)
    }
    /**
     Multiplies a fraction with current Fraction
     
     - parameter f: Fraction to multiply
     
     - returns: resulting fraction
     */
    func multiply(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    /**
     Divides current Fraction by another fraction
     
     - parameter f: Fraction to divide by
     
     - returns: resulting fraction
     */
    func divide(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
    /**
     Static method to add a fraction to current Fraction
     
     - parameter f1: Fraction to add
     - parameter f2: current Fraction
     
     - returns: resulting fraction
     */
    static func add(f1: Fraction, to f2: Fraction) -> Fraction {
        return Fraction(num: f1.num*f2.den + f1.den*f2.num,
                        den: f1.den*f2.den)
    }
    /**
     Static method to subtract a fraction from current Fraction
     
     - parameter f1: current Fraction
     - parameter f2: Fraction to subtract
     
     - returns: resulting fraction
     */
    static func subtract(f1: Fraction, from f2: Fraction) -> Fraction {
        return f2.subtract(f1);
    }
    /**
     Static method to multiply a fraction with current Fraction
     
     - parameter f1: current Fraction
     - parameter f2: Fraction to multiply by
     
     - returns: resulting fraction
     */
    static func multiply(f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    /**
     Static method to divide a fraction from current Fraction
     
     - parameter f1: current Fraction
     - parameter f2: Fraction to divide by
     
     - returns: resulting fraction
     */
    static func divide(f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    /**
     Adds a Fraction to an Int
     
     - parameter x: Int to add to Fraction
     
     - returns: resulting Fraction
     */
    func add(x: Int) -> Fraction {
        return Fraction(num: self.num + self.den*x,
                        den: self.den)
    }
    /**
     Subracts an Int from Fraction
     
     - parameter x: Int to subtract from to Fraction
     
     - returns: resulting Fraction
     */
    func subtract(x: Int) -> Fraction {
        return Fraction(num: self.num - self.den*x,
                        den: self.den)
    }
    /**
     Multiplies a Fraction with an Int
     
     - parameter x: Int to multiply with Fraction
     
     - returns: resulting Fraction
     */
    func multiply(x: Int) -> Fraction {
        return Fraction(num: self.num*x, den: self.den)
    }
    /**
     Divides a Fraction by an Int
     
     - parameter x: Int to divide with Fraction by
     
     - returns: resulting Fraction
     */
    func divide(x: Int) -> Fraction {
        return Fraction(num: self.num, den: self.den*x)
    }
    
}
/**
 Adds two Fractions together
 
 - parameter f1: Fraction to add to f2
 - parameter f2: Fraction to add to f1
 
 - returns: result of f1+f2
 */
public func +(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.add(f2)
}

/**
 Subtracts Fraction from another Fraction
 
 - parameter f1: Fraction to subtract f2 from
 - parameter f2: Fraction to subtract f1 by
 
 - returns: result of f1-f2
 */
public func -(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.subtract(f2)
}

/**
 Multiplies two Fractions together
 
 - parameter f1: Fraction to multiply with f2
 - parameter f2: Fraction to multiply with f1
 
 - returns: result of f1*f2
 */
public func *(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.multiply(f2)
}
/**
 Divides one Fraction by another.
 
 - parameter f1: Fraction to divide by f2
 - parameter f2: Fraction to divide f1 by
 
 - returns: result of f1/f2
 */
public func /(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.divide(f2)
}

/**
 Compares one Fraction by another.
 
 - parameter f1: Fraction to compare with f2
 - parameter f2: Fraction to compare with f1
 
 - returns: True if not the same. False if the same
 */
public func !=(f1: Fraction, f2: Fraction) -> Bool {
    return f1.num != f2.num || f1.den != f2.den
}
/**
 Compares one Fraction by another.
 
 - parameter f1: Fraction to compare with f2
 - parameter f2: Fraction to compare with f1
 
 - returns: False if not the same. True if the same
 */
public func ==(f1: Fraction, f2: Fraction) -> Bool {
    return f1.num == f2.num && f1.den == f2.den
}

