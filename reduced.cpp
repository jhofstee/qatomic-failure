struct QTypedArrayData {
  int _M_i;
  void ref() {__atomic_fetch_add(&_M_i, 1, int()); }
};

template <class> struct QArrayDataPointer;
template <class T> struct QMovableArrayOps : QArrayDataPointer<T> {
  void insertOne(QArrayDataPointer<char16_t>);
  void emplace() {
     QArrayDataPointer<char16_t> dummy;
     insertOne(dummy);
  }
};

template <class> struct QArrayOpsSelector {
  typedef QMovableArrayOps<QArrayDataPointer<char16_t>> Type;
};

template <class> struct QArrayDataPointer {
  QArrayDataPointer();
  QArrayDataPointer(QArrayDataPointer &other) : d(other.d), ptr(other.ptr) {
    d->ref();
  }
  QTypedArrayData *d;
  int *ptr;
};

int main() {
  QMovableArrayOps<char16_t> d;
  d.emplace();
  return 0;
}
