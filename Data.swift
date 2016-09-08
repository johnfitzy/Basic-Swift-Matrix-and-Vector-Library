//
//  Data.swift
//  Assignment1.1
//
//  Created by Matt Barnes and John Fitzgerald on 2/09/16.
//  Copyright © 2016 John Fitzgerald and Matt Barnes. All rights reserved.
//

import Foundation
/// Fraction Scalar 7/1
var scalarFR = Fraction(num: 7,den: 1)
/// Fraction 1/1
var f00 = Fraction(num: 1,den: 1)
/// Fraction 2/1
var f01 = Fraction(num: 2,den: 1)
/// Fraction 3/1
var f10 = Fraction(num: 3,den: 1)
/// Fraction 4/1
var f11 = Fraction(num: 4,den: 1)
/// Complex Scalar 7/1
var scalarC = Complex(real:7,imag: 7)
/// Complex 1+1i
var c00 = Complex(real: 1.00,imag: 1.00)
/// Complex 2+2i
var c01 = Complex(real: 2.00,imag: 2.00)
/// Complex 3+3i
var c10 = Complex(real: 3.00,imag: 3.00)
/// Complex 4+4i
var c11 = Complex(real: 4.00,imag: 4.00)
/// Float 1/7
var FL1 :Float = 1/7
/// Float 2/7
var FL2 :Float = 2/7
/// Float 3/7
var FL3 :Float = 3/7
/// Float 4/7
var FL4 :Float = 4/7
/// Double 1/7
var D1 :Double = 1/7
/// Double 2/7
var D2 :Double = 2/7
/// Double 3/7
var D3 :Double = 3/7
/// Double 4/7
var D4 :Double = 4/7

/// Matrix<Int> initilised with array: [[1,2],[3,4]]"
var Im1 = Matrix<Int>(array: [[1,2],[3,4]])
// Copy of Im1
var Im1copy = Im1.copy()
/// Matrix<Int> initilised with array: [[1,2],[3,4]]"
var Im2 = Matrix<Int>(array: [[1,2],[3,4]])

/// Matrix<Double> initilised with array: [[1,2],[3,4]]"
var Dm1 = Matrix<Double>(array: [[1.0,2.0],[3.0,4.0]])
// Copy of Dm1
var Dm1copy = Dm1.copy()
/// Matrix<Double> initilised with array: [[1,2],[3,4]]"
var Dm2 = Matrix<Double>(array: [[1.0,2.0],[3.0,4.0]])
/// Matrix<Float> initilised with array: [[1,2],[3,4]]"
var FLm1 = Matrix<Float>(array: [[1.00,2.00],[3.00,4.00]])
// Copy of FLm1
var FLm1copy = FLm1.copy()
/// Matrix<Float> initilised with array: [[1,2],[3,4]]"
var FLm2 = Matrix<Float>(array: [[1.00,2.00],[3.00,4.00]])
/// Matrix<Fraction> initilised with array: [[1/1,2/1],[3/1,4/1]]"
var FRm1 = Matrix<Fraction>(array: [[f00,f01],[f10,f11]])
/// Copy of FRm1
var FRm1copy = FRm1.copy()
/// Matrix<Fraction> initilised with array: [[1/1,2/1],[3/1,4/1]]"
var FRm2 = Matrix<Fraction>(array: [[f00,f01],[f10,f11]])
/// Matrix<Complex> initilised with array: [[1+1i,2+2i],[3+3i,4+4i]]"
var Cm1 = Matrix<Complex>(array: [[c00,c01],[c10,c11]])
/// Copy of Cm1
var Cm1copy = Cm1.copy()
/// Matrix<Complex> initilised with array: [[1+1i,2+2i],[3+3i,4+4i]]"
var Cm2 = Matrix<Complex>(array: [[c00,c01],[c10,c11]])

/// Vector<Int> initilised with array: [[1,2]"
var Iv1 = Vector<Int>(array: [[1,2]])
/// Vector<Int> initilised with array: [[1,2]"
var Iv2 = Vector<Int>(array: [[1,2]])
/// Vector<Double> initilised with array: [[1,2]"
var Dv1 = Vector<Double>(array: [[1.0,2.0]])
/// Vector<Double> initilised with array: [[1,2]"
var Dv2 = Vector<Double>(array: [[1.0,2.0]])
/// Vector<Float> initilised with array: [[1,2]"
var FLv1 = Vector<Float>(array: [[1.0,2.0]])
/// Vector<Float> initilised with array: [[1,2]"
var FLv2 = Vector<Float>(array: [[1.0,2.0]])
/// Vector<Fraction> initilised with array: [[1/1,2/2]"
var FRv1 = Vector<Fraction>(array: [[f00,f01]])
/// Vector<Fraction> initilised with array: [[1/1,2/2]"
var FRv2 = Vector<Fraction>(array: [[f00,f01]])
/// Vector<Complex> initilised with array: [[1+1i,2+2i]"
var Cv1 = Vector<Complex>(array: [[c00,c01]])
/// Vector<Complex> initilised with array: [[1+1i,2+2i]"
var Cv2 = Vector<Complex>(array: [[c00,c01]])



/// Matrixview of Iv1
var Iv1vectorview = Matrix<Int>(array: [[1,2]])
/// Vector from Im1 column 0
var Im1vectorcol = Vector<Int>(array: [[1,3]])
/// Transpose of Im1
var Im1Trans = Matrix<Int>(array:[[1,3],[2,4]])
/// Answer Matrix of Im1 + Im2
var Im1Im2plus = Matrix<Int>(array: [[2,4],[6,8]])
/// Answer Matrix of Im1 - Im2
var Im1Im2minus = Matrix<Int>(array: [[0,0],[0,0]])
/// Answer Matrix of Im1 * Im2
var Im1Im2multiply = Matrix<Int>(array: [[7,10],[15,22]])
/// Answer Matrix of Im1 + 7
var Im1Scalar7plus = Matrix<Int>(array: [[8,9],[10,11]])
/// Answer Matrix of Im1 - 7
var Im1Scalar7minus = Matrix<Int>(array: [[-6,-5],[-4,-3]])
/// Answer Matrix of Im1 * 7
var Im1Scalar7multiply = Matrix<Int>(array: [[7,14],[21,28]])
/// Answer Matrix of Im1 / 7
var Im1Scalar7divide = Matrix<Int>(array: [[1/7,2/7],[3/7,4/7]])

/// Matrixview of Dv1
var Dv1vectorview = Matrix<Double>(array: [[1,2]])
/// Vector from Dm1 column 0
var Dm1vectorcol = Vector<Double>(array: [[1,3]])
/// Transpose of Dm1
var Dm1Trans = Matrix<Double>(array:[[1,3],[2,4]])
/// Answer Matrix of Dm1 + Dm2
var Dm1Dm2plus = Matrix<Double>(array: [[2,4],[6,8]])
/// Answer Matrix of Dm1 - Dm2
var Dm1Dm2minus = Matrix<Double>(array: [[0,0],[0,0]])
/// Answer Matrix of Dm1 * Dm2
var Dm1Dm2multiply = Matrix<Double>(array: [[7,10],[15,22]])
/// Answer Matrix of Dm1 + 7
var Dm1Scalar7plus = Matrix<Double>(array: [[8,9],[10,11]])
/// Answer Matrix of Dm1 - 7
var Dm1Scalar7minus = Matrix<Double>(array: [[-6,-5],[-4,-3]])
/// Answer Matrix of Dm1 * 7
var Dm1Scalar7multiply = Matrix<Double>(array: [[7,14],[21,28]])
/// Answer Matrix of Dm1 / 7
var Dm1Scalar7divide = Matrix<Double>(array: [[D1,D2],[D3,D4]])

/// Matrixview of FLv1
var FLv1vectorview = Matrix<Float>(array: [[1,2]])
/// Vector from FLm1 column 0
var FLm1vectorcol = Vector<Float>(array: [[1,3]])
/// Transpose of FLm1
var FLm1Trans = Matrix<Float>(array:[[1,3],[2,4]])
/// Answer Matrix of FLm1 + FLm2
var FLm1FLm2plus = Matrix<Float>(array: [[2,4],[6,8]])
/// Answer Matrix of FLm1 - FLm2
var FLm1FLm2minus = Matrix<Float>(array: [[0,0],[0,0]])
/// Answer Matrix of FLm1 * FLm2
var FLm1FLm2multiply = Matrix<Float>(array: [[7,10],[15,22]])
/// Answer Matrix of FLm1 + 7
var FLm1Scalar7plus = Matrix<Float>(array: [[8,9],[10,11]])
/// Answer Matrix of FLm1 - 7
var FLm1Scalar7minus = Matrix<Float>(array: [[-6,-5],[-4,-3]])
/// Answer Matrix of FLm1 * 7
var FLm1Scalar7multiply = Matrix<Float>(array: [[7,14],[21,28]])
/// Answer Matrix of FLm1 / 7
var FLm1Scalar7divide = Matrix<Float>(array: [[FL1,FL2],[FL3,FL4]])

/// Matrixview of FRv1
var FRv1vectorview = Matrix<Fraction>(array: [[Fraction(num: 1),Fraction(num: 2)]])
/// Vector from FRm1 column 0
var FRm1vectorcol = Vector<Fraction>(array: [[Fraction(num: 1),Fraction(num: 3)]])
/// Transpose of FRm1
var FRm1Trans = Matrix<Fraction>(array:[[Fraction(num: 1),Fraction(num: 3)],[Fraction(num: 2),Fraction(num: 4)]])
/// Answer Matrix of FRm1 + FRm2
var FRm1FRm2plus = Matrix<Fraction>(array: [[Fraction(num: 2),Fraction(num: 4)],[Fraction(num: 6),Fraction(num: 8)]])
/// Answer Matrix of FRm1 - FRm2
var FRm1FRm2minus = Matrix<Fraction>(array: [[Fraction(num: 0),Fraction(num: 0)],[Fraction(num: 0),Fraction(num: 0)]])
/// Answer Matrix of FRm1 * FRm2
var FRm1FRm2multiply = Matrix<Fraction>(array: [[Fraction(num: 7),Fraction(num: 10)],[Fraction(num: 15),Fraction(num: 22)]])
/// Answer Matrix of FRm1 + 7
var FRm1Scalar7plus = Matrix<Fraction>(array: [[Fraction(num: 8),Fraction(num: 9)],[Fraction(num: 10),Fraction(num: 11)]])
/// Answer Matrix of FRm1 - 7
var FRm1Scalar7minus = Matrix<Fraction>(array: [[Fraction(num: -6),Fraction(num: -5)],[Fraction(num: -4),Fraction(num: -3)]])
/// Answer Matrix of FRm1 * 7
var FRm1Scalar7multiply = Matrix<Fraction>(array: [[Fraction(num: 7),Fraction(num: 14)],[Fraction(num: 21),Fraction(num: 28)]])
/// Answer Matrix of FRm1 / 7
var FRm1Scalar7divide = Matrix<Fraction>(array: [[Fraction(num: 1,den:7),Fraction(num: 2,den:7)],[Fraction(num: 3,den:7),Fraction(num: 4,den:7)]])

/// Matrixview of Cv1
var Cv1vectorview = Matrix<Complex>(array: [[Complex(real:1,imag: 1),Complex(real:2,imag: 2)]])
/// Vector from Cm1 column 0
var Cm1vectorcol = Vector<Complex>(array: [[Complex(real:1,imag: 1),Complex(real:3,imag: 3)]])
/// Transpose of Cm1
var Cm1Trans = Matrix<Complex>(array:[[Complex(real:1,imag: 1),Complex(real:3,imag: 3)],[Complex(real:2,imag: 2),Complex(real:4,imag: 4)]])
/// Answer Matrix of Cm1 + Cm2
var Cm1Cm2plus = Matrix<Complex>(array: [[Complex(real: 2,imag: 2),Complex(real: 4,imag: 4)],[Complex(real: 6,imag: 6),Complex(real: 8,imag: 8)]])
/// Answer Matrix of Cm1 - Cm2
var Cm1Cm2minus = Matrix<Complex>(array: [[Complex(real: 0,imag: 0),Complex(real: 0,imag: 0)],[Complex(real: 0,imag: 0),Complex(real: 0,imag: 0)]])
/// Answer Matrix of Cm1 * Cm2
var Cm1Cm2multiply = Matrix<Complex>(array: [[Complex(real: 0,imag: 14),Complex(real: 0,imag: 20)],[Complex(real: 0,imag: 30),Complex(real: 0,imag: 44)]])
/// Answer Matrix of Cm1 + 7
var Cm1Scalar7plus = Matrix<Complex>(array: [[Complex(real: 8,imag: 8),Complex(real: 9,imag: 9)],[Complex(real: 10,imag: 10),Complex(real: 11,imag: 11)]])
/// Answer Matrix of Cm1 - 7
var Cm1Scalar7minus = Matrix<Complex>(array: [[Complex(real: -6,imag: -6),Complex(real: -5,imag: -5)],[Complex(real: -4,imag: -4),Complex(real: -3,imag: -3)]])
/// Answer Matrix of Cm1 * 7
var Cm1Scalar7multiply = Matrix<Complex>(array:[[Complex(real: 0,imag: 14),Complex(real: 0,imag: 28)],[Complex(real: 0,imag: 42),Complex(real: 0,imag: 56)]])
/// Answer Matrix of Cm1 / 7
var Cm1Scalar7divide = Matrix<Complex>(array: [[Complex(real: FL1,imag: 0),Complex(real: FL2,imag: 0)],[Complex(real: FL3,imag: 0),Complex(real: FL4,imag: 0)]])


//MatrixView of Iv1
var ImatrixView = Matrix<Int>(array: [[1,2]])
//MatrixView of Fv1
var FmatrixView = Matrix<Float>(array: [[1,2]])
//MatrixView of Dv1
var DmatrixView = Matrix<Double>(array: [[1,2]])
//MatrixView of FRv1
var FRmatrixView = Matrix<Fraction>(array: [[f00,f01]])
//MatrixView of Cv1
var CImatrixView = Matrix<Complex>(array: [[c00,c01]])


/// Answer Vector of Iv1 + Iv2
var Iv1Iv2plus = Vector<Int>(array: [[2,4]])
/// Answer Vector of Iv1 - Iv2
var Iv1Iv2minus = Vector<Int>(array: [[0,0]])
/// Answer of Iv1 * Iv2
var Iv1Iv2multiply = 5
/// Answer Vector of Iv1 + 7
var Iv1Scalar7plus = Vector<Int>(array: [[8,9]])
/// Answer Vector of Iv1 - 7
var Iv1Scalar7minus = Vector<Int>(array: [[-6,-5]])
/// Answer Vector of Iv1 * 7
var Iv1Scalar7multiply = Vector<Int>(array: [[7,14]])
/// Answer Vector of Iv1 / 7
var Iv1Scalar7divide = Vector<Int>(array: [[1/7,2/7]])

/// Answer Vector of Dv1 + Dv2
var Dv1Dv2plus = Vector<Double>(array: [[2,4]])
/// Answer Vector of Dv1 - Dv2
var Dv1Dv2minus = Vector<Double>(array: [[0,0]])
/// Answer of Dv1 * Dv2
var Dv1Dv2multiply = 5.00
/// Answer Vector of Dv1 + 7
var Dv1Scalar7plus = Vector<Double>(array: [[8,9]])
/// Answer Vector of Dv1 - 7
var Dv1Scalar7minus = Vector<Double>(array: [[-6,-5]])
/// Answer Vector of Dv1 * 7
var Dv1Scalar7multiply = Vector<Double>(array: [[7,14]])
/// Answer Vector of Dv1 / 7
var Dv1Scalar7divide = Vector<Double>(array: [[D1,D2]])

/// Answer Vector of FLv1 + Flv2
var FLv1FLv2plus = Vector<Float>(array: [[2,4]])
/// Answer Vector of FLv1 - Flv2
var FLv1FLv2minus = Vector<Float>(array: [[0,0]])
/// Answer of FLv1 * Flv2
var FLv1FLv2multiply = Float(5.0)
/// Answer Vector of FLv1 + 7
var FLv1Scalar7plus = Vector<Float>(array: [[8,9]])
/// Answer Vector of FLv1 - 7
var FLv1Scalar7minus = Vector<Float>(array: [[-6,-5]])
/// Answer Vector of FLv1 * 7
var FLv1Scalar7multiply = Vector<Float>(array: [[7,14]])
/// Answer Vector of FLv1 / 7
var FLv1Scalar7divide = Vector<Float>(array: [[FL1,FL2]])

/// Answer Vector of FRv1 + FRv2
var FRv1FRv2plus = Vector<Fraction>(array: [[Fraction(num: 2),Fraction(num: 4)]])
/// Answer Vector of FRv1 - FRv2
var FRv1FRv2minus = Vector<Fraction>(array: [[Fraction(num: 0),Fraction(num: 0)]])
/// Answer of FRv1 * FRv2
var FRv1FRv2multiply = Fraction(num: 5, den: 1)
/// Answer of FRv1 + 7
var FRv1Scalar7plus = Vector<Fraction>(array: [[Fraction(num: 8),Fraction(num: 9)]])
/// Answer of FRv1 - 7
var FRv1Scalar7minus = Vector<Fraction>(array: [[Fraction(num: -6),Fraction(num: -5)]])
/// Answer of FRv1 * 7
var FRv1Scalar7multiply = Vector<Fraction>(array: [[Fraction(num: 7),Fraction(num: 14)]])
/// Answer of FRv1 / 7
var FRv1Scalar7divide = Vector<Fraction>(array: [[Fraction(num: 1,den:7),Fraction(num: 2,den:7)]])


/// Answer Vector of Cv1 + Cv2
var Cv1Cv2plus = Vector<Complex>(array: [[Complex(real: 2,imag: 2),Complex(real: 4,imag: 4)]])
/// Answer Vector of Cv1 - Cv2
var Cv1Cv2minus = Vector<Complex>(array: [[Complex(real: 0,imag: 0),Complex(real: 0,imag: 0)]])
/// Answer of Cv1 * Cv2
var Cv1Cv2multiply = Complex(real: 0,imag: 10)
/// Answer Vector of Cv1 + 7+7i
var Cv1Scalar7plus = Vector<Complex>(array: [[Complex(real: 8,imag: 8),Complex(real: 9,imag: 9)]])
/// Answer Vector of Cv1 - 7+7i
var Cv1Scalar7minus = Vector<Complex>(array: [[Complex(real: -6,imag: -6),Complex(real: -5,imag: -5)]])
/// Answer Vector of Cv1 * 7+7i
var Cv1Scalar7multiply = Vector<Complex>(array: [[Complex(real: 0,imag: 14),Complex(real: 0,imag: 28)]])
/// Answer Vector of Cv1 / 7+7i
var Cv1Scalar7divide = Vector<Complex>(array: [[Complex(real: FL1,imag: 0),Complex(real: FL2,imag: 0)]])

