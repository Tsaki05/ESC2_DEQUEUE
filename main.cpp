// main_deque.cpp
#include <iostream>
#include <chrono>
using namespace std;

// Incluye la clase Deque modificada
#include "deque_class.hpp"  // Guarda la clase en un archivo separado


int main() {
    cout << "========================================" << endl;
    cout << "   BENCHMARK: C++ vs ASSEMBLY (Deque)   " << endl;
    cout << "========================================" << endl << endl;
    
    cout << "=== TEST 1: OPERACIONS BÁSIQUES ===" << endl;
    
    cout << "PROBA EN CPP:" << endl;
    Deque d1(10);
    
    auto start1 = chrono::high_resolution_clock::now();
    
    d1.push_back_cpp(10);
    d1.push_front_cpp(5);
    d1.push_back_cpp(20);
    d1.push_front_cpp(1);
    
    cout << "Deque: ";
    d1.print();
    cout << " (size: " << d1.size() << ")" << endl;
    
    d1.pop_front_cpp();
    d1.pop_back_cpp();
    auto end1 = chrono::high_resolution_clock::now();
    auto duration1 = chrono::duration_cast<chrono::microseconds>(end1 - start1);
    cout << "Després de pop_front i pop_back: ";
    d1.print();
    cout << " (size: " << d1.size() << ")" << endl;
    cout << "Temps: " << duration1.count() << " μs" << endl << endl;
    
    cout << "PROBA EN ASSEMBLY:" << endl;
    Deque d2(10);
    auto start2 = chrono::high_resolution_clock::now();
    d2.push_back(10);
    d2.push_front(5);
    d2.push_back(20);
    d2.push_front(1);
    
    cout << "Deque: ";
    d2.print();
    cout << " (size: " << d2.size() << ")" << endl;
    
    d2.pop_front();
    d2.pop_back();
    
    auto end2 = chrono::high_resolution_clock::now();
    auto duration2 = chrono::duration_cast<chrono::microseconds>(end2 - start2);
    
    cout << "Després de pop_front i pop_back: ";
    d2.print();
    cout << " (size: " << d2.size() << ")" << endl;
    cout << "Temps: " << duration2.count() << " μs" << endl << endl;
    
    cout << "=== TEST 2: (1000 ELEMENTS) ===" << endl << endl;
    
    cout << "TEST 2 EN CPP:" << endl;
    Deque d3(1000);
    auto start3 = chrono::high_resolution_clock::now();
    
    // Llenar la deque con 500 elementos
    for (int i = 0; i < 500; i++) {
        if (i % 2 == 0) {
            d3.push_front_cpp(i);
        } else {
            d3.push_back_cpp(i);
        }
    }
    
    cout << "Després d'inserir 500 elements: ";
    cout << "size: " << d3.size() << endl;
    
    // Eliminar 250 elementos
    for (int i = 0; i < 250; i++) {
        if (i % 2 == 0) {
            if (!d3.is_empty()) d3.pop_front_cpp();
        } else {
            if (!d3.is_empty()) d3.pop_back_cpp();
        }
    }
    
    auto end3 = chrono::high_resolution_clock::now();
    auto duration3 = chrono::duration_cast<chrono::microseconds>(end3 - start3);
    cout << "Després d'eliminar 250 elements: ";
    cout << "size: " << d3.size() << endl;
    cout << "Temps total: " << duration3.count() << " μs" << endl << endl;
    
    cout << "TEST 2 EN ASSEMBLY:" << endl;
    Deque d4(1000);
    auto start4 = chrono::high_resolution_clock::now();
    
    // Llenar la deque con 500 elementos
    for (int i = 0; i < 500; i++) {
        if (i % 2 == 0) {
            d4.push_front(i);
        } else {
            d4.push_back(i);
        }
    }
    
    cout << "Després d'inserir 500 elements: ";
    cout << "size: " << d4.size() << endl;
    
    // Eliminar 250 elementos
    for (int i = 0; i < 250; i++) {
        if (i % 2 == 0) {
            if (!d4.is_empty()) d4.pop_front();
        } else {
            if (!d4.is_empty()) d4.pop_back();
        }
    }
    
    auto end4 = chrono::high_resolution_clock::now();
    auto duration4 = chrono::duration_cast<chrono::microseconds>(end4 - start4);
    cout << "Després d'eliminar 250 elements: ";
    cout << "size: " << d4.size() << endl;
    cout << "Temps total: " << duration4.count() << " μs" << endl << endl;
    
    cout << "=== TEST 3: OPERACIONS MIXTES INTENSIVAS ===" << endl << endl;
    
    cout << "OPERACIONS MIXTES EN CPP (10000 operacions):" << endl;
    Deque d5(2000);
    auto start5 = chrono::high_resolution_clock::now();
    
    int operations = 0;
    for (int i = 0; i < 10000; i++) {
        // 70% push, 30% pop
        if (i % 10 < 7) {
            // 50% push_front, 50% push_back
            if (i % 2 == 0) {
                d5.push_front_cpp(i);
            } else {
                d5.push_back_cpp(i);
            }
            operations++;
        } else {
            // 50% pop_front, 50% pop_back
            if (!d5.is_empty()) {
                if (i % 2 == 0) {
                    d5.pop_front_cpp();
                } else {
                    d5.pop_back_cpp();
                }
                operations++;
            }
        }
    }
    
    auto end5 = chrono::high_resolution_clock::now();
    auto duration5 = chrono::duration_cast<chrono::microseconds>(end5 - start5);
    cout << "Operacions realitzades: " << operations << endl;
    cout << "Size final: " << d5.size() << endl;
    cout << "Temps total: " << duration5.count() << " μs" << endl;
    cout << "Temps per operació: " << (double)duration5.count() / operations << " μs" << endl << endl;
    
    cout << "OPERACIONS MIXTES EN ASSEMBLY (10000 operacions):" << endl;
    Deque d6(2000);
    auto start6 = chrono::high_resolution_clock::now();
    
    operations = 0;
    for (int i = 0; i < 10000; i++) {
        // 70% push, 30% pop
        if (i % 10 < 7) {
            // 50% push_front, 50% push_back
            if (i % 2 == 0) {
                d6.push_front(i);
            } else {
                d6.push_back(i);
            }
            operations++;
        } else {
            // 50% pop_front, 50% pop_back
            if (!d6.is_empty()) {
                if (i % 2 == 0) {
                    d6.pop_front();
                } else {
                    d6.pop_back();
                }
                operations++;
            }
        }
    }
    
    auto end6 = chrono::high_resolution_clock::now();
    auto duration6 = chrono::duration_cast<chrono::microseconds>(end6 - start6);
    cout << "Operacions realitzades: " << operations << endl;
    cout << "Size final: " << d6.size() << endl;
    cout << "Temps total: " << duration6.count() << " μs" << endl;
    cout << "Temps per operació: " << (double)duration6.count() / operations << " μs" << endl << endl;
  

    return 0;
}
