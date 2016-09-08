//
//  Test.swift
//  Assignment1.1
//
//  Created by John Fitzgerald and Matt Barnes on 1/09/16.
//  Copyright © 2016 John Fitzgerald and Matt Barnes. All rights reserved.
//

import Foundation

/// Class for testing all Matrix and Vector methods with all available types
public class TestMatrixVector<T:MatrixData>: TestProtocol{
    
    /**
     Default Initialiser to conform to MatrixData Type
     */
    init(){}
    
    /**
     Tests var row in Matrix class has correct output.
     
     - parameter m: Matrix<T> that is to be tested
     */
    public func testRow(m: Matrix<T>){
        print("Testing Matrix rows for type \(m.type())...")
        
        if m._array.count==m.rows{
            print("- Matrix rows is \(m.rows), this is correct\n")
        }else{
            print("- Error: Matrix rows is \(m.rows), this is incorrect\n")
        
        }
    }
    /**
      Tests var row in Matrix class has correct output.
      Prints the result.
     
     - parameter m: Matrix<T> that is to be tested
     */
    public func testColumns(m: Matrix<T>){
        print("Testing Matrix columns for type \(m.type())...")
        if m._array[0].count==m.columns{
            print("- Matrix rows is \(m.columns), this is correct\n")
        }
        else{
            print("- ERROR: Matrix columns is \(m.columns), this is incorrect\n")
        }
    }
    /**
     Tests transpose() function in Matrix class has correct output.
     Prints the result.
     
     - parameter correct: The expected result of transpose
     - parameter test:    The matrix to transpose
     */
    public func testTranspose(correct: Matrix<T>, test: Matrix<T>){
        print("Testing Matrix Transpose() for type \(test.type())...")
        let result = test.transpose
        if compare(correct, mat2: result){
            print("- Transpose is working correctly\n")
        }else{
            print("- ERROR: Matrix transpose is incorrect\n")
        }
    }
    
    /**
     Tests copy() in Matrix class has correct output.
     Prints the result.
     
     - parameter m: Matrix<T> that is to be tested
     */
    public func testCopy(m: Matrix<T>){
        print("Testing Matrix copy() for type \(m.type())...")
        if compare(m, mat2: m.copy()){
            print("- Matrix copy() is working correctly!\n")
        }else{
            print("- ERROR: Matrix testCopy is incorrect\n")
        }
    }
    /**
     Tests vectorView() function in Matrix class has correct output.
     Prints the result.
     
     - parameter correct: The expected result of vectorview function
     - parameter m:       The Matrix<T> that is to be tested
     */
    public func testVectorView(correct: Vector<T>, m: Matrix<T>){
        print("Testing Matrix vectorView() for type \(m.type())...")
        if compare(correct,vec2: m.vectorview){
            print("- Matrix testVectorView is working correctly\n")
        }else{
            print("- ERROR: Matrix testVectorView is incorrect\n")
        }
    }
    /**
     Tests row() function in Matrix class has correct output.
     Prints the result.
     
     - parameter correct: The expected result of row function
     - parameter m:       The Matrix<T> that is to be tested
     */
    public func testFuncRow(correct: Vector<T>, m: Matrix<T>){
        print("Testing Matrix row for type \(m.type())...")
        if compare(correct,vec2: m.row(0)){
            print("- Matrix row is working correctly\n")
        }else{
            print("- ERROR: Something is wrong with Matrix row\n")
        }
    }
    /**
     Tests column() function in Matrix class has correct output.
     Prints the result.
     
     - parameter correct: The expected result of column function
     - parameter m:       The Matrix<T> that is to be tested
     */
    public func testFuncColumn(correct: Vector<T>, m: Matrix<T>){
        print("Testing Matrix column() for type \(m.type())...")
        if compare(correct,vec2: m.column(0)){
            print("- Matrix column is working correctly\n")
        }else{
            print("- ERROR: Matrix column is incorrect\n")
        }
    }
    
    /**
     Tests the Matrix+Matrix function in Matrix class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of + function
     - parameter m1:      The Matrix<T> that is to be added to m2
     - parameter m2:      The Matrix<T> that is to be added to m1
     */
    public func testAdd(correct: Matrix<T>, m1: Matrix<T>, m2: Matrix<T>){
        print("Testing Matrix + operator for type: \(m1.type())...")
        if compare(correct, mat2: m1+m2) {
            print("- Matrix + operator is working fine\n")
        }else{
            print("- ERROR: something is wrong with the Matrix + operator\n")
        }
    }
    
    /**
     Tests the Matrix-Matrix function in Matrix class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of - function
     - parameter m1:      The Matrix<T> that will be subtracted by m2
     - parameter m2:      The Matrix<T> that will be subtracted from m1
     */
    public func testSub(correct: Matrix<T>, m1: Matrix<T>, m2: Matrix<T>){
        print("Testing Matrix - operator for type: \(m1.type())...")
        if compare(correct, mat2: m1-m2) {
            print("- Matrix - operator is working fine\n")
        }else{
            print("- ERROR something is wrong with the Matrix - operator\n")
        }

    }
    
    /**
     Tests the Matrix*Matrix function in Matrix class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of * function
     - parameter m1:      The Matrix<T> that will be subtracted by m2
     - parameter m2:      The Matrix<T> that will be subtracted from m1
     */
    
    public func testMult(correct: Matrix<T>, m1: Matrix<T>, m2: Matrix<T>){
        print("Testing Matrix * operator for type: \(m1.type())...")
        if compare(correct, mat2: m1*m2) {
            print("- Matrix * operator is working fine\n")
        }else{
            print("- ERROR: something is wrong with the Matrix * operator\n")
        }

    }
    
    /**
     Tests the Matrix+scalar function in Matrix class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of + function
     - parameter m: The Matrix<T> that is to be added to scalar
     - parameter num: The scalar to add to m
     */
    public func testScalarAdd(correct: Matrix<T>, m: Matrix<T>, num: T){
        print("Testing Matrix scalar + operator for type: \(m.type())...")
        if compare(correct, mat2: m+num) {
            print("- Matrix scalar + operator is working fine\n")
        }else{
            print("- ERROR: something is wrong with the Matrix scalar + operator\n")
        }

    }
    
    /**
     Tests the Matrix-scalar function in Matrix class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of - function
     - parameter m: The Matrix<T> that is to be subtracted by scalar
     - parameter num: The scalar to be subtracted to m
     */
    public func testScalarSub(correct: Matrix<T>, m: Matrix<T>, num: T){
        print("Testing Matrix scalar - operator for type: \(m.type())...")
        if compare(correct, mat2: m-num) {
            print("- Matrix scalar - operator is working fine.\n")
        }else{
            print("- ERROR: something is wrong with the Matrix scalar - operator\n")
        }

    }
    
    /**
     Tests the Matrix*scalar function in Matrix class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of * function
     - parameter m: The Matrix<T> that is to be multipied by scalar
     - parameter num: The scalar to be multiplied by m
     */
    public func testScalarMult(correct: Matrix<T>, m: Matrix<T>, num: T){
        print("Testing Matrix scalar * operator for type: \(m.type())...")
        if compare(correct, mat2: m*num) {
            print("- Matrix scalar * operator is working fine\n")
        }else{
            print("- ERROR: something is wrong with the Matrix scalar * operator\n")
        }
    }
    
    /**
     Tests the Matrix/scalar function in Matrix class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of / function
     - parameter m: The Matrix<T> that is to be divided by scalar
     - parameter num: The scalar to divide m by
     */
    public func testScalarDiv(correct: Matrix<T>, m: Matrix<T>, num: T){
        print("Testing Matrix scalar / operator for type: \(m.type())...")
        if compare(correct, mat2: m/num) {
            print("- Matrix scalar / operator is working fine\n")
        }else{
            print("- ERROR: something is wrong with the Matrix scalar / operator\n")
        }
    }
    
    
    /**
     Tests var row in Vector class has correct output.
     
     - parameter v: Vector<T> that is to be tested
     */
    public func testRow(v: Vector<T>){
        print("Testing Vector rows for type \(v.type())...")
        if v.rows == 1 {
            print("- Vector rows is \(v.rows), this is correct\n")
        }else{
            print("- ERROR: Vector rows is \(v.rows), this is incorrect\n")
        }
        
    }
    
    /**
     Tests var column in Vector class has correct output.
     
     - parameter v: Vector<T> that is to be tested
     */
    public func testColumns(v: Vector<T>){
        print("Testing Vector columns for type \(v.type())...")
        if v.size == v.columns {
            print("- Vector columns is \(v.columns), vector size is \(v.size), this is correct\n")
        }else{
            print("- ERROR: Something is wrong! Vector columns is \(v.columns), this is incorrect\n")
        }
        
    }
    /**
     Tests copy() in Vector class has correct output.
     Prints the result.
     
     - parameter v: Vector<T> that is to be tested
     */
    public func testCopy(v: Vector<T>){
        print("Testing Vector copy() for type \(v.type())...")
        let copy = v.copy()
        if compare(v, vec2: copy) {
            print("- Vector copy() working, the copy vector contains the same values\n")
        }else{
            print("- ERROR: Something is wrong with Vector copy()\n")
        }
    }
    
    /**
     Tests the dot function in Vector class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of dot function
     - parameter v1:      The Vector<T> that will be multiplied with v2
     - parameter v2:      The Vector<T> that will be multiplied with v1
     */
    public func testDot(correct: T, v1: Vector<T>, v2: Vector<T>){
        print("Testing Vector dot() for type \(v1.type())...")
        if v1.dot(v2) == correct {
            print("- Dot product is working\n")
        }else{
            print("- ERROR: There is a problem with Vector dot()\n")
        }
    }
    
    /**
     Tests matrixView function in Vector class has correct output.
     Prints the result.
     
     - parameter correct: The expected result of matrixView function
     - parameter v:       The Vector<T> that is to be tested
     */
    public func testMatrixView(correct: Matrix<T>, v: Vector<T>){
        print("Testing Vector matrixView() for type \(v.type())...")
        if compare(correct, mat2: v.matrixview) {
            print("- Vector MatrixView() is turning the vector into a Matrix\n")
        }else{
            print("- ERROR: There is something wrong with Vector matrixView()\n")
        }
        
    }
    /**
     Tests the Vector+Vector function in Vector class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of + function
     - parameter v1:      The Vector<T> that is to be added to v2
     - parameter v2:      The Vector<T> that is to be added to v1
     */
    public func testAdd(correct: Vector<T>, v1: Vector<T>, v2: Vector<T>){
        print("Testing Vector + operator for type \(v1.type())...")
        let result = v1+v2
        if(compare(correct, vec2: result)){
        print("- Vector + operator is working correctly\n")
        }else{
            print("- ERROR: There is something wrong with Vector + operator\n")
        }
    }
    /**
     Tests the Vector-Vector function in Vector class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of - function
     - parameter v1:      The Vector<T> that is to be subtracted by v2
     - parameter v2:      The Vector<T> that is to be subtracted from v1
     */
    public func testSub(correct: Vector<T>, v1: Vector<T>, v2: Vector<T>){
        print("Testing Vector - operator for type \(v1.type())...")
        let result = v1-v2
        if(compare(correct, vec2: result)){
        print("- Vector - operator is working correctly\n")
        }else{
            print("- ERROR: There is something wrong with Vector - operator\n")
        }
    }
    
    /**
     Tests the Vector*Vector function in Vector class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of * function
     - parameter v1:      The Vector<T> that is to be multiplied with v2
     - parameter v2:      The Vector<T> that is to be multiplied with v1
     */
    public func testMult(correct: T, v1: Vector<T>, v2: Vector<T>){
        print("Testing Vector * operator for type \(v1.type())...")
        if(v1*v2 == correct){
            print("- Vector * operator is working correctly\n")
        }else{
            print("- ERROR: There is something wrong with Vector * operator\n")
            
        }
    }
    /**
     Tests the Vector+scalar function in Vector class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of + function
     - parameter m: The Vector<T> that is to be added to scalar
     - parameter num: The scalar to add to v
     */
    public func testScalarAdd(correct: Vector<T>, v: Vector<T>, num: T){
        print("Testing Vector scalar + operator for type \(v.type())...")
        let result = v+num
        if(compare(correct, vec2: result)){
        print("- Vector scalar + operator is working correctly\n")
        }else{
            print("- ERROR: There is something wrong with the Vector scalar + operator\n")
        }
    }
    /**
     Tests the Vector-scalar function in Vector class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of - function
     - parameter m: The Vector<T> that is to be subtracted by scalar
     - parameter num: The scalar to subtract from v
     */
    public func testScalarSub(correct: Vector<T>, v: Vector<T>, num: T){
        print("Testing Vector scalar - operator for type \(v.type())...")
        let result = v-num
        if(compare(correct, vec2: result)){
        print("- Vector scalar - operator is working correctly\n")
        }
        else{
            print("- ERROR: There is something wrong with Vector scalar - operator\n")
        }
    }
    /**
     Tests the Vector*scalar function in Vector class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of * function
     - parameter m: The Vector<T> that is to be multiplied by scalar
     - parameter num: The scalar to multiply with v
     */
    public func testScalarMult(correct: Vector<T>, v: Vector<T>, num: T){
        print("Testing  Vector scalar * operator for type \(v.type())...")
        let result = v*num
        if compare(correct, vec2: result){
        print("- Vector scalar * operator is working correctly\n")
        }else{
            print("- ERROR: There is something wrong with Vector scalar * operator\n")
        }
    }
    /**
     Tests the Vector/scalar function in Vector class has the correct output.
     Prints the result.
     
     - parameter correct: The expected result of / function
     - parameter m: The Vector<T> that is to be divided by scalar
     - parameter num: The scalar to divide v by
     */
    
    public func testScalarDiv(correct: Vector<T>, v: Vector<T>, num: T){
        print("Testing Vector scalar / operator for type \(v.type())")
        let result = v/num
        if(compare(correct, vec2: result)){
        print(" - Vector scalar / operator is working correctly!\n")
        }else{
            print("- ERROR: There is something wrong with Vector scalar / operator\n")
            
        }
    }
    
    
    /**
     Compares the data inside two matrices
     
     - parameter mat1: Matrix<T> to compare with mat2
     - parameter mat2: Matrix<T> to compare with mat1
     
     - returns: returns boolean. True if data inside matrices have the same values, else false
     */
    private func compare(mat1: Matrix<T>, mat2: Matrix<T>) -> Bool {
        if mat1.rows != mat2.rows && mat1.columns != mat2.columns{
            return false
        }else{
            for row in 0..<mat1.rows {
                for col in 0..<mat1.columns {
                    if mat1[row, col] != mat2[row, col] {
                        return false
                    }
                }
            }
        }
        return true
    }
    /**
     Compares the data inside two vectors
     
     - parameter vec1: Vector<T> to compare with vec2
     - parameter vec2: Vector<T> to compare with vec1
     
     - returns: returns boolean. True if data inside vectors have the same values, else false.
     */
    private func compare(vec1: Vector<T>, vec2: Vector<T>) -> Bool {
        if vec1.size != vec2.size {
            return false
        }else{
            for row in 0..<vec1.size {
                if vec1[row] != vec2[row] {
                    return false
                }
            }
        }
        return true
    }

}