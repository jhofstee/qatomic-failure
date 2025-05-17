struct A {
  int _M_i;
  void ref() {__atomic_fetch_add(&_M_i, 1, 0); }
};

struct B  {
    B();
    void insertOne(B);
    void emplace() {
        B dummy;
        insertOne(dummy);
    }
    B(B &other) : d(other.d), ptr(other.ptr) {
        d->ref();
    }
    A *d;
    int *ptr;
};

void testing() {
  B test;
  test.emplace();
}
