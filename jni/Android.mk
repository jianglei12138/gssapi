LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := gssapi
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/gssglue \
	$(LOCAL_PATH)/gssglue/gssapi

LOCAL_SRC_FILES := \
	g_accept_sec_context.c     g_get_mic.c                g_mit_krb5_mech.c          g_verify.c           \
	g_acquire_cred.c           g_glue.c                   g_oid_ops.c                g_verify_mic.c       \
	g_canon_name.c             g_imp_name.c               g_process_context.c        g_wrap.c             \
	g_ccache_name.c            g_imp_sec_context.c        g_rel_buffer.c             gen_oids.c           \
	g_compare_name.c           g_indicate_mechs.c         g_rel_cred.c               gssd_pname_to_uid.c  \
	g_context_time.c           g_init_sec_context.c       g_rel_name.c               g_unwrap.c           \
	g_delete_sec_context.c     g_initialize.c             g_rel_oid_set.c            g_mechname.c         \
	g_dsp_name.c               g_inq_context.c            g_seal.c                   g_exp_sec_context.c  \
	g_dsp_status.c             g_inq_cred.c               g_set_allowable_enctypes.c oid_ops.c            \
	g_dup_name.c               g_inq_names.c              g_sign.c                   g_unseal.c           \
	g_exp_name.c               g_lucid_context.c          
                      

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-g -O2 \
	-Wall \

include $(BUILD_SHARED_LIBRARY)