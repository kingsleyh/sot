#import <Foundation/Foundation.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_define_global_const(const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_E70DE03DA07F480DB608F42623833184(void *, void *);
void MREP_714A034E60534FE69DC2F98DC2C7A92C(void *, void *);
void MREP_9F05829E77AF4FA89FF5C183B7D29AA4(void *, void *);
void MREP_3562FE3151F344909ACBC6018ED6DDE2(void *, void *);
void MREP_E56D5F4DC0164E24B5DB937157916152(void *, void *);
void MREP_FA3ABFAE63E449C0A177EDD3EC739311(void *, void *);
void MREP_1D45ABE8B3F9423493710B39C7FC896B(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
rb_define_global_const("RUBYMOTION_ENV", @"development");
rb_define_global_const("RUBYMOTION_VERSION", @"3.8");
MREP_E70DE03DA07F480DB608F42623833184(self, 0);
MREP_714A034E60534FE69DC2F98DC2C7A92C(self, 0);
MREP_9F05829E77AF4FA89FF5C183B7D29AA4(self, 0);
MREP_3562FE3151F344909ACBC6018ED6DDE2(self, 0);
MREP_E56D5F4DC0164E24B5DB937157916152(self, 0);
MREP_FA3ABFAE63E449C0A177EDD3EC739311(self, 0);
MREP_1D45ABE8B3F9423493710B39C7FC896B(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
