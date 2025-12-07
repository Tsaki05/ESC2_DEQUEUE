#include <iostream>
#include <vector>
using namespace std;

struct Deque{

private:

    int *_valors;
    int _mida;
    int _ultim;

    void copy_values(const Deque &d){
        if(_valors != nullptr) delete[] _valors;
        _mida = d._mida;
        _ultim = d._ultim;
        _valors = new int[_mida];

        for(int i = 0; i < _ultim; ++i){
            _valors[i] = d._valors[i];
        }
    }

    void make_empty(){
        _mida = 0;
        _ultim = 0;
        if(_valors != nullptr) delete[] _valors;
        _valors = nullptr;
    }


public:

    Deque(const int &i){

        if(i <= 1){
            _mida = 1;
            _ultim = 0;
            _valors = new int[1];
        }

        else{
            _valors = new int[i];
            _mida = i;
            _ultim = 0;
        }
    }

    ~Deque() {
        delete[] _valors;
    }


    Deque(const Deque &d){
        copy_values(d);
    }

    Deque& operator=(const Deque &d){

        if (this != &d) copy_values(d);

        return *this;
    }

    int size() const{
        return _ultim;
    }

    bool is_empty() const{
        return _ultim == 0;
    }

    int get_front() const{
        return _valors[0];
    }

    int get_back() const{
        return _valors[_ultim - 1];
    }

    void push_back(const int &i){
        if(_ultim < _mida){
            _valors[_ultim] = i;
            ++_ultim;
        }
    }

    void push_front(const int &k){
        if(_ultim < _mida - 1){

            for(int i = _ultim; i > 0; --i){
                _valors[i] = _valors[i-1];
            }
            _valors[0] = k;
            ++_ultim;
        }
    }

    void pop_back(){
        if(_ultim > 0) --_ultim;
    }

    void pop_front(){

        for(int i = 1;  i < _ultim; ++i){
            _valors[i-1] = _valors[i];
        }

        if(_ultim > 0) --_ultim;
    }


    bool operator<(const Deque &d){
        return _ultim < d._ultim;
    }

    bool operator<=(const Deque &d){
        return _ultim <= d._ultim;
    }

    bool operator>(const Deque &d){
        return _ultim > d._ultim;
    }

    bool operator>=(const Deque &d){
        return _ultim >= d._ultim;
    }

    bool operator==(const Deque &d){
        bool retorn = (_ultim == d._ultim);

        for(int i = 0; (retorn) and (i < _ultim); ++i){
            retorn = _valors[i] == d._valors[i];
        }

        return retorn;
    }

    void print(){

        cout << "[ ";

        for(int i = 0; i < _ultim; ++i){
            cout << _valors[i] << " ";
        }

        cout << "]";
    }

};




int main(){

    Deque d(10);

    cout << "== TEST 1: Insercions variades ==" << endl;
    d.push_back(10);
    d.push_front(5);
    d.push_back(20);
    d.push_front(1);
    d.push_back(30);
    d.print();  // Esperat: [ 1 5 10 20 30 ]
    cout << "  mida = " << d.size() << endl << endl;


    cout << "== TEST 2: Pops combinats ==" << endl;
    d.pop_front();   // treu 1
    d.pop_back();    // treu 30
    d.print();       // Esperat: [ 5 10 20 ]
    cout << "  mida = " << d.size() << endl << endl;


    cout << "== TEST 3: Esborrar fins a buidar ==" << endl;
    d.pop_front();   // 5
    d.pop_back();    // 20
    d.pop_back();    // 10
    d.print();       // Esperat: [ ]
    cout << "  mida = " << d.size() << "  (ha de ser 0)" << endl;

    cout << "Dequeue buida? " << (d.is_empty() ? "sí" : "no") << endl << endl;


    cout << "== TEST 4: Inserir després d’haver buidat ==" << endl;
    d.push_back(100);
    d.push_front(50);
    d.push_back(150);
    d.print();  // Esperat: [ 50 100 150 ]
    cout << "  mida = " << d.size() << endl << endl;


    cout << "== TEST 5: Seqüència llarga d’operacions aleatòries ==" << endl;
    Deque d2(55);

    for (int i = 1; i <= 50; i++) {
        if (i % 3 == 0) d2.push_front(i);
        else d2.push_back(i);
    }

    d2.print();
    cout << "  mida = " << d2.size() << " (ha de ser 50)" << endl << endl;


    cout << "== TEST 6: Buidar la seqüència llarga una a una ==" << endl;
    while (!d2.is_empty()) {
        cout << "front = " << d2.get_front() << "  ";
        d2.pop_front();
    }
    cout << endl << "mida final = " << d2.size() << endl << endl;


    cout << "== TEST 7: Provar l'operador = ==" << endl;
    Deque a(5);
    a.push_back(1);
    a.push_back(2);
    a.push_back(3);

    Deque b(5);
    b.push_back(10);
    b.push_back(20);

    cout << "Deque a: "; a.print(); cout << endl;
    cout << "Deque b: "; b.print(); cout << endl;

    cout << "son iguals? " << (b == a ? "sí" : "no") << endl << endl;

    cout << "fa la copia" << endl << endl;

    b = a;  // còpia

    cout << "Deque a: "; a.print(); cout << endl;
    cout << "Deque b (després de 'b = a'): "; b.print(); cout << endl;

    cout << "son iguals? " << (b == a ? "sí" : "no") << endl << endl;

    cout << "Modifiquem a i comprovem que b no canvia:" << endl;
    a.pop_front();
    a.push_back(99);

    cout << "Deque a: "; a.print(); cout << endl;
    cout << "Deque b: "; b.print(); cout << endl;

}
