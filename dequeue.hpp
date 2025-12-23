#include <iostream>
#include <vector>
using namespace std;

// Declaraciones externas de las funciones assembly
extern "C" {
    void push_front_asm(void* deque_ptr, int value);
    void push_back_asm(void* deque_ptr, int value);
    void pop_front_asm(void* deque_ptr);
    void pop_back_asm(void* deque_ptr);
}

struct Deque {
private:
    int *_valors;
    int _mida;
    int _ultim;

    void copy_values(const Deque &d) {
        if(_valors != nullptr) delete[] _valors;
        _mida = d._mida;
        _ultim = d._ultim;
        _valors = new int[_mida];

        for(int i = 0; i < _ultim; ++i) {
            _valors[i] = d._valors[i];
        }
    }

    void make_empty() {
        _mida = 0;
        _ultim = 0;
        if(_valors != nullptr) delete[] _valors;
        _valors = nullptr;
    }

public:
    Deque(const int &i) {
        if(i <= 1) {
            _mida = 1;
            _ultim = 0;
            _valors = new int[1];
        } else {
            _valors = new int[i];
            _mida = i;
            _ultim = 0;
        }
    }

    ~Deque() {
        delete[] _valors;
    }

    Deque(const Deque &d) {
        copy_values(d);
    }

    Deque& operator=(const Deque &d) {
        if (this != &d) copy_values(d);
        return *this;
    }

    int size() const {
        return _ultim;
    }

    bool is_empty() const {
        return _ultim == 0;
    }

    int get_front() const {
        return _valors[0];
    }

    int get_back() const {
        return _valors[_ultim - 1];
    }

    // ========== VERSIÓN C++ ORIGINAL ==========
    void push_back_cpp(const int &i) {
        if(_ultim < _mida) {
            _valors[_ultim] = i;
            ++_ultim;
        }
    }

    void push_front_cpp(const int &k) {
        if(_ultim < _mida - 1) {
            for(int i = _ultim; i > 0; --i) {
                _valors[i] = _valors[i-1];
            }
            _valors[0] = k;
            ++_ultim;
        }
    }

    void pop_back_cpp() {
        if(_ultim > 0) --_ultim;
    }

    void pop_front_cpp() {
        for(int i = 1; i < _ultim; ++i) {
            _valors[i-1] = _valors[i];
        }
        if(_ultim > 0) --_ultim;
    }

    // ========== VERSIÓN ASSEMBLY ==========
    void push_back(const int &i) {
        // Llama a la versión assembly
        push_back_asm(this, i);
    }

    void push_front(const int &k) {
        // Llama a la versión assembly
        push_front_asm(this, k);
    }

    void pop_back() {
        // Llama a la versión assembly
        pop_back_asm(this);
    }

    void pop_front() {
        // Llama a la versión assembly
        pop_front_asm(this);
    }

    // ========== MÉTODOS AUXILIARES PARA ASSEMBLY ==========
    // Estos métodos permiten acceso directo a los miembros privados
    // (Necesarios si el assembly necesita acceder directamente)
    int* get_valors() const { return _valors; }
    int get_mida() const { return _mida; }
    int get_ultim() const { return _ultim; }
    void set_ultim(int ultim) { _ultim = ultim; }

    // Operadores de comparación
    bool operator<(const Deque &d) {
        return _ultim < d._ultim;
    }

    bool operator<=(const Deque &d) {
        return _ultim <= d._ultim;
    }

    bool operator>(const Deque &d) {
        return _ultim > d._ultim;
    }

    bool operator>=(const Deque &d) {
        return _ultim >= d._ultim;
    }

    bool operator==(const Deque &d) {
        bool retorn = (_ultim == d._ultim);
        for(int i = 0; (retorn) and (i < _ultim); ++i) {
            retorn = _valors[i] == d._valors[i];
        }
        return retorn;
    }

    void print() {
        cout << "[ ";
        for(int i = 0; i < _ultim; ++i) {
            cout << _valors[i] << " ";
        }
        cout << "]";
    }
};
