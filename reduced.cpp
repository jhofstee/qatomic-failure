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
  void insertOne(T);
  void emplace() {
      QArrayDataPointer<char16_t> dummy;
      insertOne(dummy);
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
};

int main() {
  QArrayDataPointer<char16_t> d;
  d->emplace();
  return 0;
}
