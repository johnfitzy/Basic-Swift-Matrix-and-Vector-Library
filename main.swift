//
//  main.swift
//  Assignment1
//
//  Created by John Fitzgerald on 4/09/16.
//  Copyright © 2016 John Fitzgerald. All rights reserved.
//

import Foundation



import Foundation

var testInt = TestMatrixVector<Int>()
var testFloat = TestMatrixVector<Float>()
var testDouble = TestMatrixVector<Double>()
var testFraction = TestMatrixVector<Fraction>()
var testComplex = TestMatrixVector<Complex>()


/** Test for Matrix Row */
testInt.testRow(Im1)
testFloat.testRow(FLm1)
testDouble.testRow(Dm1)
testFraction.testRow(FRm1)
testComplex.testRow(Cm1)
print("------------------------")

/** Test for Matrix columns */
testInt.testColumns(Im1)
testFloat.testColumns(FLm1)
testDouble.testColumns(Dm1)
testFraction.testColumns(FRm1)
testComplex.testColumns(Cm1)
print("------------------------")
/** Test Matrix row() */
testInt.testFuncRow(Iv1, m: Im1)
testFloat.testFuncRow(FLv1, m: FLm1)
testDouble.testFuncRow(Dv1, m: Dm1)
testFraction.testFuncRow(FRv1, m: FRm1)
testComplex.testFuncRow(Cv1, m: Cm1)
print("------------------------")

/** Tesing Matrix column() */
testInt.testFuncColumn(Im1vectorcol, m: Im1)
testFloat.testFuncColumn(FLm1vectorcol, m: FLm1)
testDouble.testFuncColumn(Dm1vectorcol, m: Dm1)
testFraction.testFuncColumn(FRm1vectorcol, m: FRm1)
testComplex.testFuncColumn(Cm1vectorcol, m: Cm1)
print("------------------------")
/** Testing Matrix transpose() */
testInt.testTranspose(Im1Trans, test: Im1copy)
testFloat.testTranspose(FLm1Trans, test: FLm1copy)
testDouble.testTranspose(Dm1Trans, test: Dm1copy)
testFraction.testTranspose(FRm1Trans, test: FRm1copy)
testComplex.testTranspose(Cm1Trans, test: Cm1copy)
print("------------------------")

/** Testing Matrix copy()*/
testInt.testCopy(Im1)
testFloat.testCopy(FLm1)
testDouble.testCopy(Dm1)
testFraction.testCopy(FRm1)
testComplex.testCopy(Cm1)
print("------------------------")

/** Testing Matrix vectorView() */
testInt.testVectorView(Iv1, m: Iv1vectorview)
testFloat.testVectorView(FLv1, m: FLv1vectorview)
testDouble.testVectorView(Dv1, m: Dv1vectorview)
testFraction.testVectorView(FRv1, m: FRv1vectorview)
testComplex.testVectorView(Cv1, m:  Cv1vectorview)
print("------------------------")

/** Tesing Vector rows */
testInt.testRow(Iv1)
testFloat.testRow(FLv1)
testDouble.testRow(Dv1)
testFraction.testRow(FRv1)
testComplex.testRow(Cv1)
print("------------------------")

/** Testing Vector columns */
testInt.testColumns(Iv1)
testFloat.testColumns(FLv1)
testDouble.testColumns(Dv1)
testFraction.testColumns(FRv1)
testComplex.testColumns(Cv1)
print("------------------------")

/** Tesing Vector copy()*/
testInt.testCopy(Iv1)
testFloat.testCopy(FLv1)
testDouble.testCopy(Dv1)
testFraction.testCopy(FRv1)
testComplex.testCopy(Cv1)
print("------------------------")

/** Testing Vector dot() */
testInt.testDot(5, v1: Iv1, v2: Iv1)
testFloat.testDot(Float(5.0), v1: FLv1, v2: FLv2)
testDouble.testDot(5.0, v1: Dv1, v2: Dv2)
testFraction.testDot(Fraction(num: 5, den: 1), v1: FRv1, v2: FRv2)
testComplex.testDot(Complex(real: 0,imag: 10), v1: Cv1, v2: Cv2)
print("------------------------")

/**
 Test Vector operators
 */

/** Testing Vector + operator*/
testInt.testAdd(Im1Im2plus, m1: Im1, m2: Im2)
testFloat.testAdd(FLm1FLm2plus, m1: FLm1, m2: FLm2)
testDouble.testAdd(Dm1Dm2plus, m1: Dm1, m2: Dm2)
testFraction.testAdd(FRm1FRm2plus, m1: FRm1, m2: FRm2)
testComplex.testAdd(Cm1Cm2plus, m1: Cm1, m2: Cm2)
print("------------------------")

/** Testing Vector - operator */
testInt.testSub(Im1Im2minus, m1: Im1, m2: Im2)
testFloat.testSub(FLm1FLm2minus, m1: FLm1, m2: FLm2)
testDouble.testSub(Dm1Dm2minus, m1: Dm1, m2: Dm2)
testFraction.testSub(FRm1FRm2minus, m1: FRm1, m2: FRm2)
testComplex.testSub(Cm1Cm2minus, m1: Cm1, m2: Cm2)
print("------------------------")

/** Tesing Vector * operator */
testInt.testMult(Iv1Iv2multiply, v1: Iv1, v2: Iv2)
testFloat.testMult(FLv1FLv2multiply, v1: FLv1, v2: FLv2)
testDouble.testMult(Dv1Dv2multiply, v1: Dv1, v2: Dv2)
testFraction.testMult(FRv1FRv2multiply, v1: FRv1, v2: FRv2)
testComplex.testMult(Cv1Cv2multiply, v1: Cv1, v2: Cv2)
print("------------------------")

/** Testing Vector scalar + operator*/
testInt.testScalarAdd(Im1Scalar7plus, m: Im1, num: 7)
testDouble.testScalarAdd(Dm1Scalar7plus, m: Dm1, num: 7)
testFloat.testScalarAdd(FLm1Scalar7plus, m: FLm1, num: 7)
testFraction.testScalarAdd(FRm1Scalar7plus, m: FRm1, num: scalarFR)
testComplex.testScalarAdd(Cm1Scalar7plus, m: Cm1, num: scalarC)
print("------------------------")

/** Testing Vector Scalar - operator */
testInt.testScalarSub(Im1Scalar7minus, m: Im1, num: 7)
testDouble.testScalarSub(Dm1Scalar7minus, m: Dm1, num: 7)
testFloat.testScalarSub(FLm1Scalar7minus, m: FLm1, num: 7)
testFraction.testScalarSub(FRm1Scalar7minus, m: FRm1, num: scalarFR)
testComplex.testScalarSub(Cm1Scalar7minus, m: Cm1, num: scalarC)
print("------------------------")

/**
 Test Matrix operators
 */

/** Testing Matrix * operator */
testInt.testMult(Im1Im2multiply, m1: Im1, m2: Im2)
testFloat.testMult(FLm1FLm2multiply, m1: FLm1, m2: FLm2)
testDouble.testMult(Dm1Dm2multiply, m1: Dm1, m2: Dm2)
testFraction.testMult(FRm1FRm2multiply, m1: FRm1, m2: FRm2)
testComplex.testMult(Cm1Cm2multiply, m1: Cm1, m2: Cm2)
print("------------------------")

/** Testing Matrix Scalar * operator */
testInt.testScalarMult(Im1Scalar7multiply, m: Im1, num: 7)
testFloat.testScalarMult(FLm1Scalar7multiply, m: FLm1, num: 7)
testDouble.testScalarMult(Dm1Scalar7multiply, m: Dm1, num: 7)
testFraction.testScalarMult(FRm1Scalar7multiply, m: FRm1, num: scalarFR)
testComplex.testScalarMult(Cm1Scalar7multiply, m: Cm1, num: scalarC)
print("------------------------")

/** Testing Matrix scalar / operator */
testInt.testScalarDiv(Im1Scalar7divide, m: Im1, num: 7)
testDouble.testScalarDiv(Dm1Scalar7divide, m: Dm1, num: 7)
testFloat.testScalarDiv(FLm1Scalar7divide, m: FLm1, num: 7)
testFraction.testScalarDiv(FRm1Scalar7divide, m: FRm1, num: scalarFR)
testComplex.testScalarDiv(Cm1Scalar7divide, m: Cm1, num: scalarC)
print("------------------------")

/** Testing Matrix scalar + operator */
testInt.testAdd(Iv1Iv2plus, v1: Iv1, v2: Iv2)
testFloat.testAdd(FLv1FLv2plus, v1: FLv1, v2: FLv2)
testDouble.testAdd(Dv1Dv2plus, v1: Dv1, v2: Dv2)
testFraction.testAdd(FRv1FRv2plus, v1: FRv1, v2: FRv2)
testComplex.testAdd(Cv1Cv2plus, v1: Cv1, v2: Cv2)
print("------------------------")

/** Testing Matrix scalar - operator */
testInt.testSub(Iv1Iv2minus, v1: Iv1, v2: Iv2)
testFloat.testSub(FLv1FLv2minus, v1: FLv1, v2: FLv2)
testDouble.testSub(Dv1Dv2minus, v1: Dv1, v2: Dv2)
testFraction.testSub(FRv1FRv2minus, v1: FRv1, v2: FRv2)
testComplex.testSub(Cv1Cv2minus, v1: Cv1, v2: Cv2)
print("------------------------")

/** Testing Matrix scalar + operator */
testInt.testScalarAdd(Iv1Scalar7plus, v: Iv1, num: 7)
testFloat.testScalarAdd(FLv1Scalar7plus, v: FLv1, num: 7)
testDouble.testScalarAdd(Dv1Scalar7plus, v: Dv1, num: 7)
testFraction.testScalarAdd(FRv1Scalar7plus, v: FRv1, num: scalarFR)
testComplex.testScalarAdd(Cv1Scalar7plus, v: Cv1, num: scalarC)
print("------------------------")

/** Testing Matrix scalar - operator */
testInt.testScalarSub(Iv1Scalar7minus, v: Iv1, num: 7)
testFloat.testScalarSub(FLv1Scalar7minus, v: FLv1, num: 7)
testDouble.testScalarSub(Dv1Scalar7minus, v: Dv1, num: 7)
testFraction.testScalarSub(FRv1Scalar7minus, v: FRv1, num: scalarFR)
testComplex.testScalarSub(Cv1Scalar7minus, v: Cv1, num: scalarC)
print("------------------------")

/** Testing Matrix scalar * operator */
testInt.testScalarMult(Iv1Scalar7multiply, v: Iv1, num: 7)
testFloat.testScalarMult(FLv1Scalar7multiply, v: FLv1, num: 7)
testDouble.testScalarMult(Dv1Scalar7multiply, v: Dv1, num: 7)
testFraction.testScalarMult(FRv1Scalar7multiply, v: FRv1, num: scalarFR)
testComplex.testScalarMult(Cv1Scalar7multiply, v: Cv1, num: scalarC)
print("------------------------")

/** Testing Matrix scalar / operator */
testInt.testScalarDiv(Iv1Scalar7divide, v: Iv1, num: 7)
testFloat.testScalarDiv(FLv1Scalar7divide, v: FLv1, num: 7)
testDouble.testScalarDiv(Dv1Scalar7divide, v: Dv1, num: 7)
testFraction.testScalarDiv(FRv1Scalar7divide, v: FRv1, num: scalarFR)
testComplex.testScalarDiv(Cv1Scalar7divide, v: Cv1, num: scalarC)







