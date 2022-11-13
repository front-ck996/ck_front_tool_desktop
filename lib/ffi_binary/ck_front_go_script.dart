// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Bindings to `headers/example.h`.
class CkFrontGoScript {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  CkFrontGoScript(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  CkFrontGoScript.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void __va_start(
    ffi.Pointer<va_list> arg0,
  ) {
    return ___va_start(
      arg0,
    );
  }

  late final ___va_startPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<va_list>)>>(
          '__va_start');
  late final ___va_start =
      ___va_startPtr.asFunction<void Function(ffi.Pointer<va_list>)>();

  void __security_init_cookie() {
    return ___security_init_cookie();
  }

  late final ___security_init_cookiePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>(
          '__security_init_cookie');
  late final ___security_init_cookie =
      ___security_init_cookiePtr.asFunction<void Function()>();

  void __security_check_cookie(
    int _StackCookie,
  ) {
    return ___security_check_cookie(
      _StackCookie,
    );
  }

  late final ___security_check_cookiePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(uintptr_t)>>(
          '__security_check_cookie');
  late final ___security_check_cookie =
      ___security_check_cookiePtr.asFunction<void Function(int)>();

  void __report_gsfailure(
    int _StackCookie,
  ) {
    return ___report_gsfailure(
      _StackCookie,
    );
  }

  late final ___report_gsfailurePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(uintptr_t)>>(
          '__report_gsfailure');
  late final ___report_gsfailure =
      ___report_gsfailurePtr.asFunction<void Function(int)>();

  late final ffi.Pointer<uintptr_t> ___security_cookie =
      _lookup<uintptr_t>('__security_cookie');

  int get __security_cookie => ___security_cookie.value;

  set __security_cookie(int value) => ___security_cookie.value = value;

  void _invalid_parameter_noinfo() {
    return __invalid_parameter_noinfo();
  }

  late final __invalid_parameter_noinfoPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>(
          '_invalid_parameter_noinfo');
  late final __invalid_parameter_noinfo =
      __invalid_parameter_noinfoPtr.asFunction<void Function()>();

  void _invalid_parameter_noinfo_noreturn() {
    return __invalid_parameter_noinfo_noreturn();
  }

  late final __invalid_parameter_noinfo_noreturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>(
          '_invalid_parameter_noinfo_noreturn');
  late final __invalid_parameter_noinfo_noreturn =
      __invalid_parameter_noinfo_noreturnPtr.asFunction<void Function()>();

  void _invoke_watson(
    ffi.Pointer<ffi.WChar> _Expression,
    ffi.Pointer<ffi.WChar> _FunctionName,
    ffi.Pointer<ffi.WChar> _FileName,
    int _LineNo,
    int _Reserved,
  ) {
    return __invoke_watson(
      _Expression,
      _FunctionName,
      _FileName,
      _LineNo,
      _Reserved,
    );
  }

  late final __invoke_watsonPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.WChar>,
              ffi.Pointer<ffi.WChar>,
              ffi.Pointer<ffi.WChar>,
              ffi.UnsignedInt,
              uintptr_t)>>('_invoke_watson');
  late final __invoke_watson = __invoke_watsonPtr.asFunction<
      void Function(ffi.Pointer<ffi.WChar>, ffi.Pointer<ffi.WChar>,
          ffi.Pointer<ffi.WChar>, int, int)>();

  ffi.Pointer<ffi.Int> _errno() {
    return __errno();
  }

  late final __errnoPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int> Function()>>('_errno');
  late final __errno = __errnoPtr.asFunction<ffi.Pointer<ffi.Int> Function()>();

  int _set_errno(
    int _Value,
  ) {
    return __set_errno(
      _Value,
    );
  }

  late final __set_errnoPtr =
      _lookup<ffi.NativeFunction<errno_t Function(ffi.Int)>>('_set_errno');
  late final __set_errno = __set_errnoPtr.asFunction<int Function(int)>();

  int _get_errno(
    ffi.Pointer<ffi.Int> _Value,
  ) {
    return __get_errno(
      _Value,
    );
  }

  late final __get_errnoPtr =
      _lookup<ffi.NativeFunction<errno_t Function(ffi.Pointer<ffi.Int>)>>(
          '_get_errno');
  late final __get_errno =
      __get_errnoPtr.asFunction<int Function(ffi.Pointer<ffi.Int>)>();

  int __threadid() {
    return ___threadid();
  }

  late final ___threadidPtr =
      _lookup<ffi.NativeFunction<ffi.UnsignedLong Function()>>('__threadid');
  late final ___threadid = ___threadidPtr.asFunction<int Function()>();

  int __threadhandle() {
    return ___threadhandle();
  }

  late final ___threadhandlePtr =
      _lookup<ffi.NativeFunction<uintptr_t Function()>>('__threadhandle');
  late final ___threadhandle = ___threadhandlePtr.asFunction<int Function()>();

  double cabs(
    _Dcomplex _Z,
  ) {
    return _cabs(
      _Z,
    );
  }

  late final _cabsPtr =
      _lookup<ffi.NativeFunction<ffi.Double Function(_Dcomplex)>>('cabs');
  late final _cabs = _cabsPtr.asFunction<double Function(_Dcomplex)>();

  _Dcomplex cacos(
    _Dcomplex _Z,
  ) {
    return _cacos(
      _Z,
    );
  }

  late final _cacosPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('cacos');
  late final _cacos = _cacosPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex cacosh(
    _Dcomplex _Z,
  ) {
    return _cacosh(
      _Z,
    );
  }

  late final _cacoshPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('cacosh');
  late final _cacosh = _cacoshPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  double carg(
    _Dcomplex _Z,
  ) {
    return _carg(
      _Z,
    );
  }

  late final _cargPtr =
      _lookup<ffi.NativeFunction<ffi.Double Function(_Dcomplex)>>('carg');
  late final _carg = _cargPtr.asFunction<double Function(_Dcomplex)>();

  _Dcomplex casin(
    _Dcomplex _Z,
  ) {
    return _casin(
      _Z,
    );
  }

  late final _casinPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('casin');
  late final _casin = _casinPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex casinh(
    _Dcomplex _Z,
  ) {
    return _casinh(
      _Z,
    );
  }

  late final _casinhPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('casinh');
  late final _casinh = _casinhPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex catan(
    _Dcomplex _Z,
  ) {
    return _catan(
      _Z,
    );
  }

  late final _catanPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('catan');
  late final _catan = _catanPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex catanh(
    _Dcomplex _Z,
  ) {
    return _catanh(
      _Z,
    );
  }

  late final _catanhPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('catanh');
  late final _catanh = _catanhPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex ccos(
    _Dcomplex _Z,
  ) {
    return _ccos(
      _Z,
    );
  }

  late final _ccosPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('ccos');
  late final _ccos = _ccosPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex ccosh(
    _Dcomplex _Z,
  ) {
    return _ccosh(
      _Z,
    );
  }

  late final _ccoshPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('ccosh');
  late final _ccosh = _ccoshPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex cexp(
    _Dcomplex _Z,
  ) {
    return _cexp(
      _Z,
    );
  }

  late final _cexpPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('cexp');
  late final _cexp = _cexpPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  double cimag(
    _Dcomplex _Z,
  ) {
    return _cimag(
      _Z,
    );
  }

  late final _cimagPtr =
      _lookup<ffi.NativeFunction<ffi.Double Function(_Dcomplex)>>('cimag');
  late final _cimag = _cimagPtr.asFunction<double Function(_Dcomplex)>();

  _Dcomplex clog(
    _Dcomplex _Z,
  ) {
    return _clog(
      _Z,
    );
  }

  late final _clogPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('clog');
  late final _clog = _clogPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex clog10(
    _Dcomplex _Z,
  ) {
    return _clog10(
      _Z,
    );
  }

  late final _clog10Ptr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('clog10');
  late final _clog10 = _clog10Ptr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex conj(
    _Dcomplex _Z,
  ) {
    return _conj(
      _Z,
    );
  }

  late final _conjPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('conj');
  late final _conj = _conjPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex cpow(
    _Dcomplex _X,
    _Dcomplex _Y,
  ) {
    return _cpow(
      _X,
      _Y,
    );
  }

  late final _cpowPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex, _Dcomplex)>>(
          'cpow');
  late final _cpow =
      _cpowPtr.asFunction<_Dcomplex Function(_Dcomplex, _Dcomplex)>();

  _Dcomplex cproj(
    _Dcomplex _Z,
  ) {
    return _cproj(
      _Z,
    );
  }

  late final _cprojPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('cproj');
  late final _cproj = _cprojPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  double creal(
    _Dcomplex _Z,
  ) {
    return _creal(
      _Z,
    );
  }

  late final _crealPtr =
      _lookup<ffi.NativeFunction<ffi.Double Function(_Dcomplex)>>('creal');
  late final _creal = _crealPtr.asFunction<double Function(_Dcomplex)>();

  _Dcomplex csin(
    _Dcomplex _Z,
  ) {
    return _csin(
      _Z,
    );
  }

  late final _csinPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('csin');
  late final _csin = _csinPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex csinh(
    _Dcomplex _Z,
  ) {
    return _csinh(
      _Z,
    );
  }

  late final _csinhPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('csinh');
  late final _csinh = _csinhPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex csqrt(
    _Dcomplex _Z,
  ) {
    return _csqrt(
      _Z,
    );
  }

  late final _csqrtPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('csqrt');
  late final _csqrt = _csqrtPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex ctan(
    _Dcomplex _Z,
  ) {
    return _ctan(
      _Z,
    );
  }

  late final _ctanPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('ctan');
  late final _ctan = _ctanPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  _Dcomplex ctanh(
    _Dcomplex _Z,
  ) {
    return _ctanh(
      _Z,
    );
  }

  late final _ctanhPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex)>>('ctanh');
  late final _ctanh = _ctanhPtr.asFunction<_Dcomplex Function(_Dcomplex)>();

  double norm(
    _Dcomplex _Z,
  ) {
    return _norm(
      _Z,
    );
  }

  late final _normPtr =
      _lookup<ffi.NativeFunction<ffi.Double Function(_Dcomplex)>>('norm');
  late final _norm = _normPtr.asFunction<double Function(_Dcomplex)>();

  double cabsf(
    _Fcomplex _Z,
  ) {
    return _cabsf(
      _Z,
    );
  }

  late final _cabsfPtr =
      _lookup<ffi.NativeFunction<ffi.Float Function(_Fcomplex)>>('cabsf');
  late final _cabsf = _cabsfPtr.asFunction<double Function(_Fcomplex)>();

  _Fcomplex cacosf(
    _Fcomplex _Z,
  ) {
    return _cacosf(
      _Z,
    );
  }

  late final _cacosfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('cacosf');
  late final _cacosf = _cacosfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex cacoshf(
    _Fcomplex _Z,
  ) {
    return _cacoshf(
      _Z,
    );
  }

  late final _cacoshfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('cacoshf');
  late final _cacoshf = _cacoshfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  double cargf(
    _Fcomplex _Z,
  ) {
    return _cargf(
      _Z,
    );
  }

  late final _cargfPtr =
      _lookup<ffi.NativeFunction<ffi.Float Function(_Fcomplex)>>('cargf');
  late final _cargf = _cargfPtr.asFunction<double Function(_Fcomplex)>();

  _Fcomplex casinf(
    _Fcomplex _Z,
  ) {
    return _casinf(
      _Z,
    );
  }

  late final _casinfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('casinf');
  late final _casinf = _casinfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex casinhf(
    _Fcomplex _Z,
  ) {
    return _casinhf(
      _Z,
    );
  }

  late final _casinhfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('casinhf');
  late final _casinhf = _casinhfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex catanf(
    _Fcomplex _Z,
  ) {
    return _catanf(
      _Z,
    );
  }

  late final _catanfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('catanf');
  late final _catanf = _catanfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex catanhf(
    _Fcomplex _Z,
  ) {
    return _catanhf(
      _Z,
    );
  }

  late final _catanhfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('catanhf');
  late final _catanhf = _catanhfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex ccosf(
    _Fcomplex _Z,
  ) {
    return _ccosf(
      _Z,
    );
  }

  late final _ccosfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('ccosf');
  late final _ccosf = _ccosfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex ccoshf(
    _Fcomplex _Z,
  ) {
    return _ccoshf(
      _Z,
    );
  }

  late final _ccoshfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('ccoshf');
  late final _ccoshf = _ccoshfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex cexpf(
    _Fcomplex _Z,
  ) {
    return _cexpf(
      _Z,
    );
  }

  late final _cexpfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('cexpf');
  late final _cexpf = _cexpfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  double cimagf(
    _Fcomplex _Z,
  ) {
    return _cimagf(
      _Z,
    );
  }

  late final _cimagfPtr =
      _lookup<ffi.NativeFunction<ffi.Float Function(_Fcomplex)>>('cimagf');
  late final _cimagf = _cimagfPtr.asFunction<double Function(_Fcomplex)>();

  _Fcomplex clogf(
    _Fcomplex _Z,
  ) {
    return _clogf(
      _Z,
    );
  }

  late final _clogfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('clogf');
  late final _clogf = _clogfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex clog10f(
    _Fcomplex _Z,
  ) {
    return _clog10f(
      _Z,
    );
  }

  late final _clog10fPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('clog10f');
  late final _clog10f = _clog10fPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex conjf(
    _Fcomplex _Z,
  ) {
    return _conjf(
      _Z,
    );
  }

  late final _conjfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('conjf');
  late final _conjf = _conjfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex cpowf(
    _Fcomplex _X,
    _Fcomplex _Y,
  ) {
    return _cpowf(
      _X,
      _Y,
    );
  }

  late final _cpowfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex, _Fcomplex)>>(
          'cpowf');
  late final _cpowf =
      _cpowfPtr.asFunction<_Fcomplex Function(_Fcomplex, _Fcomplex)>();

  _Fcomplex cprojf(
    _Fcomplex _Z,
  ) {
    return _cprojf(
      _Z,
    );
  }

  late final _cprojfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('cprojf');
  late final _cprojf = _cprojfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  double crealf(
    _Fcomplex _Z,
  ) {
    return _crealf(
      _Z,
    );
  }

  late final _crealfPtr =
      _lookup<ffi.NativeFunction<ffi.Float Function(_Fcomplex)>>('crealf');
  late final _crealf = _crealfPtr.asFunction<double Function(_Fcomplex)>();

  _Fcomplex csinf(
    _Fcomplex _Z,
  ) {
    return _csinf(
      _Z,
    );
  }

  late final _csinfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('csinf');
  late final _csinf = _csinfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex csinhf(
    _Fcomplex _Z,
  ) {
    return _csinhf(
      _Z,
    );
  }

  late final _csinhfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('csinhf');
  late final _csinhf = _csinhfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex csqrtf(
    _Fcomplex _Z,
  ) {
    return _csqrtf(
      _Z,
    );
  }

  late final _csqrtfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('csqrtf');
  late final _csqrtf = _csqrtfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex ctanf(
    _Fcomplex _Z,
  ) {
    return _ctanf(
      _Z,
    );
  }

  late final _ctanfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('ctanf');
  late final _ctanf = _ctanfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  _Fcomplex ctanhf(
    _Fcomplex _Z,
  ) {
    return _ctanhf(
      _Z,
    );
  }

  late final _ctanhfPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex)>>('ctanhf');
  late final _ctanhf = _ctanhfPtr.asFunction<_Fcomplex Function(_Fcomplex)>();

  double normf(
    _Fcomplex _Z,
  ) {
    return _normf(
      _Z,
    );
  }

  late final _normfPtr =
      _lookup<ffi.NativeFunction<ffi.Float Function(_Fcomplex)>>('normf');
  late final _normf = _normfPtr.asFunction<double Function(_Fcomplex)>();

  _Dcomplex _Cbuild(
    double _Re,
    double _Im,
  ) {
    return __Cbuild(
      _Re,
      _Im,
    );
  }

  late final __CbuildPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(ffi.Double, ffi.Double)>>(
          '_Cbuild');
  late final __Cbuild =
      __CbuildPtr.asFunction<_Dcomplex Function(double, double)>();

  _Dcomplex _Cmulcc(
    _Dcomplex _X,
    _Dcomplex _Y,
  ) {
    return __Cmulcc(
      _X,
      _Y,
    );
  }

  late final __CmulccPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex, _Dcomplex)>>(
          '_Cmulcc');
  late final __Cmulcc =
      __CmulccPtr.asFunction<_Dcomplex Function(_Dcomplex, _Dcomplex)>();

  _Dcomplex _Cmulcr(
    _Dcomplex _X,
    double _Y,
  ) {
    return __Cmulcr(
      _X,
      _Y,
    );
  }

  late final __CmulcrPtr =
      _lookup<ffi.NativeFunction<_Dcomplex Function(_Dcomplex, ffi.Double)>>(
          '_Cmulcr');
  late final __Cmulcr =
      __CmulcrPtr.asFunction<_Dcomplex Function(_Dcomplex, double)>();

  _Fcomplex _FCbuild(
    double _Re,
    double _Im,
  ) {
    return __FCbuild(
      _Re,
      _Im,
    );
  }

  late final __FCbuildPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(ffi.Float, ffi.Float)>>(
          '_FCbuild');
  late final __FCbuild =
      __FCbuildPtr.asFunction<_Fcomplex Function(double, double)>();

  _Fcomplex _FCmulcc(
    _Fcomplex _X,
    _Fcomplex _Y,
  ) {
    return __FCmulcc(
      _X,
      _Y,
    );
  }

  late final __FCmulccPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex, _Fcomplex)>>(
          '_FCmulcc');
  late final __FCmulcc =
      __FCmulccPtr.asFunction<_Fcomplex Function(_Fcomplex, _Fcomplex)>();

  _Fcomplex _FCmulcr(
    _Fcomplex _X,
    double _Y,
  ) {
    return __FCmulcr(
      _X,
      _Y,
    );
  }

  late final __FCmulcrPtr =
      _lookup<ffi.NativeFunction<_Fcomplex Function(_Fcomplex, ffi.Float)>>(
          '_FCmulcr');
  late final __FCmulcr =
      __FCmulcrPtr.asFunction<_Fcomplex Function(_Fcomplex, double)>();

  int StartWebsocket() {
    return _StartWebsocket();
  }

  late final _StartWebsocketPtr =
      _lookup<ffi.NativeFunction<GoUint8 Function()>>('StartWebsocket');
  late final _StartWebsocket = _StartWebsocketPtr.asFunction<int Function()>();

  int StopWebsocket() {
    return _StopWebsocket();
  }

  late final _StopWebsocketPtr =
      _lookup<ffi.NativeFunction<GoUint8 Function()>>('StopWebsocket');
  late final _StopWebsocket = _StopWebsocketPtr.asFunction<int Function()>();

  int GetServePort() {
    return _GetServePort();
  }

  late final _GetServePortPtr =
      _lookup<ffi.NativeFunction<GoInt Function()>>('GetServePort');
  late final _GetServePort = _GetServePortPtr.asFunction<int Function()>();

  ffi.Pointer<ffi.Char> SleepPrint(
    int seconds,
  ) {
    return _SleepPrint(
      seconds,
    );
  }

  late final _SleepPrintPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(GoInt)>>(
          'SleepPrint');
  late final _SleepPrint =
      _SleepPrintPtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  ffi.Pointer<ffi.Char> GetRowGithubusercontentComIps() {
    return _GetRowGithubusercontentComIps();
  }

  late final _GetRowGithubusercontentComIpsPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'GetRowGithubusercontentComIps');
  late final _GetRowGithubusercontentComIps = _GetRowGithubusercontentComIpsPtr
      .asFunction<ffi.Pointer<ffi.Char> Function()>();
}

typedef va_list = ffi.Pointer<ffi.Char>;
typedef uintptr_t = ffi.UnsignedLongLong;

class __crt_locale_data_public extends ffi.Struct {
  external ffi.Pointer<ffi.UnsignedShort> _locale_pctype;

  @ffi.Int()
  external int _locale_mb_cur_max;

  @ffi.UnsignedInt()
  external int _locale_lc_codepage;
}

class __crt_locale_pointers extends ffi.Struct {
  external ffi.Pointer<__crt_locale_data> locinfo;

  external ffi.Pointer<__crt_multibyte_data> mbcinfo;
}

class __crt_locale_data extends ffi.Opaque {}

class __crt_multibyte_data extends ffi.Opaque {}

class _Mbstatet extends ffi.Struct {
  @ffi.UnsignedLong()
  external int _Wchar;

  @ffi.UnsignedShort()
  external int _Byte;

  @ffi.UnsignedShort()
  external int _State;
}

typedef errno_t = ffi.Int;

class _GoString_ extends ffi.Struct {
  external ffi.Pointer<ffi.Char> p;

  @ptrdiff_t()
  external int n;
}

typedef ptrdiff_t = ffi.LongLong;

class _C_double_complex extends ffi.Struct {
  @ffi.Array.multi([2])
  external ffi.Array<ffi.Double> _Val;
}

class _C_float_complex extends ffi.Struct {
  @ffi.Array.multi([2])
  external ffi.Array<ffi.Float> _Val;
}

class _C_ldouble_complex extends ffi.Opaque {}

typedef _Dcomplex = _C_double_complex;
typedef _Fcomplex = _C_float_complex;

class GoInterface extends ffi.Struct {
  external ffi.Pointer<ffi.Void> t;

  external ffi.Pointer<ffi.Void> v;
}

class GoSlice extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @GoInt()
  external int len;

  @GoInt()
  external int cap;
}

typedef GoInt = GoInt64;
typedef GoInt64 = ffi.LongLong;
typedef GoUint8 = ffi.UnsignedChar;

const int _VCRT_COMPILER_PREPROCESSOR = 1;

const int _SAL_VERSION = 20;

const int __SAL_H_VERSION = 180000000;

const int _USE_DECLSPECS_FOR_SAL = 0;

const int _USE_ATTRIBUTES_FOR_SAL = 0;

const int _CRT_PACKING = 8;

const int _VCRUNTIME_DISABLED_WARNINGS = 4514;

const int _HAS_EXCEPTIONS = 1;

const int _WCHAR_T_DEFINED = 1;

const int NULL = 0;

const int _HAS_CXX17 = 0;

const int _HAS_CXX20 = 0;

const int _HAS_CXX23 = 0;

const int _HAS_NODISCARD = 1;

const int _ARM_WINAPI_PARTITION_DESKTOP_SDK_AVAILABLE = 1;

const int _CRT_BUILD_DESKTOP_APP = 1;

const int _UCRT_DISABLED_WARNINGS = 4324;

const int _ARGMAX = 100;

const int _TRUNCATE = -1;

const int _CRT_INT_MAX = 2147483647;

const int _CRT_SIZE_MAX = -1;

const String __FILEW__ = 'C';

const int _CRT_FUNCTIONS_REQUIRED = 1;

const int _CRT_HAS_CXX17 = 0;

const int _CRT_HAS_C11 = 0;

const int _CRT_INTERNAL_NONSTDC_NAMES = 1;

const int __STDC_SECURE_LIB__ = 200411;

const int __GOT_SECURE_LIB__ = 200411;

const int __STDC_WANT_SECURE_LIB__ = 1;

const int _SECURECRT_FILL_BUFFER_PATTERN = 254;

const int _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = 0;

const int _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = 0;

const int _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = 1;

const int _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = 0;

const int _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = 0;
