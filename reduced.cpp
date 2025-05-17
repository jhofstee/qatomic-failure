namespace std {
  template <typename _Tp> _Tp forward();
  template <typename _Tp, typename _Up> _Tp exchange(_Tp __obj, _Up) {
    return __obj;
  }
}

struct QTypedArrayData {
  int _M_i;
  void ref() {__atomic_fetch_add(&_M_i, 1, int()); }
};

template <class> struct QArrayDataPointer;
template <class T> struct QMovableArrayOps : QArrayDataPointer<T> {
  struct Inserter {
    Inserter(QArrayDataPointer<T> *, int, int);
    void insertOne(T);
  };
  template <typename... Args> void emplace(int i, Args &&...) {
    T tmp(std::forward<Args>()...);
    Inserter(this, i, 1).insertOne(tmp);
  }
};

template <class> struct QArrayOpsSelector {
  typedef QMovableArrayOps<QArrayDataPointer<char16_t>> Type;
};

template <class T> struct QCommonArrayOps : QArrayOpsSelector<T>::Type {};
template <class> struct QArrayDataPointer {
  QArrayDataPointer();
  QArrayDataPointer(QArrayDataPointer &other) : d(other.d), ptr(other.ptr) {
    d->ref();
  }
  QCommonArrayOps<int> *operator->();
  QTypedArrayData *d;
  int *ptr;
  int size;
};

int main() {
  QArrayDataPointer<char16_t> dirEntry;
  QArrayDataPointer<int> d;
  d->emplace(d->size, dirEntry);
  return 0;
}
