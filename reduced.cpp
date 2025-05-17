struct QString;

namespace std {
  template <typename _Tp> _Tp forward();
  template <typename _Tp> QString &&move(_Tp &&);
  template <typename _Tp, typename _Up> _Tp exchange(_Tp __obj, _Up) {
    return __obj;
  }

  struct atomic {
    int _M_i;
    void fetch_add(int __i) { __atomic_fetch_add(&_M_i, __i, int()); }
  };
}

struct QBasicAtomicInteger {
  std::atomic _q_value;
  void ref() { _q_value.fetch_add(1); }
};

struct QTypedArrayData {
  QBasicAtomicInteger ref_;
  void ref() { ref_.ref(); }
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
  typedef QMovableArrayOps<QString> Type;
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

struct QString {
  QArrayDataPointer<char16_t> d;
} typedef parameter_type;

QArrayDataPointer<int> d;
template <typename... Args> void emplaceBack(Args &&...) {
  d->emplace(d->size, std::forward<Args>()...);
}

struct QList {
  void operator<<(parameter_type t) { emplaceBack(t); }
};

int main() {
  QString dirEntry;
  QList() << dirEntry;
  return 0;
}
