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
void MREP_CD95859BF9D7412BAA63DE9A9C7C7AF2(void *, void *);
void MREP_72A9B12A02AF41D386AFC8605AD2D01B(void *, void *);
void MREP_220CBB4E693E49439F2312D1E4CB0265(void *, void *);
void MREP_2F5D5DC694CF45F0A4701B9ECD117F2E(void *, void *);
void MREP_B71200136E5442C2B07BFA2E6A95A517(void *, void *);
void MREP_C93AA27CA5034BFA89657F5A890BAE89(void *, void *);
void MREP_C075A3C9085445678043C52B4768C109(void *, void *);
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
MREP_CD95859BF9D7412BAA63DE9A9C7C7AF2(self, 0);
MREP_72A9B12A02AF41D386AFC8605AD2D01B(self, 0);
MREP_220CBB4E693E49439F2312D1E4CB0265(self, 0);
MREP_2F5D5DC694CF45F0A4701B9ECD117F2E(self, 0);
MREP_B71200136E5442C2B07BFA2E6A95A517(self, 0);
MREP_C93AA27CA5034BFA89657F5A890BAE89(self, 0);
MREP_C075A3C9085445678043C52B4768C109(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
