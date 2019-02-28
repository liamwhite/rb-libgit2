require 'ffi'

module Git2
  extend FFI::Library
  ffi_lib "git2"

  def self.attach_function(name, *_)
    super
  rescue FFI::NotFoundError => e
    class_eval do
      define_method(name) { |*_| raise e }
    end
  end

  GIT_ATTR_CHECK_FILE_THEN_INDEX = "0"
  GIT_ATTR_CHECK_INDEX_ONLY = "2"
  GIT_ATTR_CHECK_INDEX_THEN_FILE = "1"
  GIT_ATTR_CHECK_NO_SYSTEM = "( 1 << 2 )"
  GIT_BLAME_OPTIONS_INIT = "{ 1 }"
  GIT_BLAME_OPTIONS_VERSION = "1"
  GIT_CHECKOUT_OPTIONS_INIT = "{ 1 }"
  GIT_CHECKOUT_OPTIONS_VERSION = "1"
  GIT_CHERRYPICK_OPTIONS_INIT = "{ 1 , 0 , { 1 , GIT_MERGE_FIND_RENAMES } , { 1 } }"
  GIT_CHERRYPICK_OPTIONS_VERSION = "1"
  GIT_CLONE_OPTIONS_INIT = "{ 1 , { 1 , GIT_CHECKOUT_SAFE } , { 1 , { 1 } , GIT_FETCH_PRUNE_UNSPECIFIED , 1 , GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED , { 1 } } }"
  GIT_CLONE_OPTIONS_VERSION = "1"
  GIT_DEFAULT_PORT = "\"9418\""
  GIT_DESCRIBE_DEFAULT_ABBREVIATED_SIZE = "7"
  GIT_DESCRIBE_DEFAULT_MAX_CANDIDATES_TAGS = "10"
  GIT_DESCRIBE_FORMAT_OPTIONS_INIT = "{ 1 , 7 , }"
  GIT_DESCRIBE_FORMAT_OPTIONS_VERSION = "1"
  GIT_DESCRIBE_OPTIONS_INIT = "{ 1 , 10 , }"
  GIT_DESCRIBE_OPTIONS_VERSION = "1"
  GIT_DIFF_FIND_OPTIONS_INIT = "{ 1 }"
  GIT_DIFF_FIND_OPTIONS_VERSION = "1"
  GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT = "{ 1 , 0 , 1 , 1 , ( ( void * ) 0 ) , ( ( void * ) 0 ) , ( ( void * ) 0 ) , ( ( void * ) 0 ) }"
  GIT_DIFF_FORMAT_EMAIL_OPTIONS_VERSION = "1"
  GIT_DIFF_HUNK_HEADER_SIZE = "128"
  GIT_DIFF_OPTIONS_INIT = "{ 1 , 0 , GIT_SUBMODULE_IGNORE_UNSPECIFIED , { ( ( void * ) 0 ) , 0 } , ( ( void * ) 0 ) , ( ( void * ) 0 ) , ( ( void * ) 0 ) , 3 }"
  GIT_DIFF_OPTIONS_VERSION = "1"
  GIT_DIFF_PATCHID_OPTIONS_INIT = "{ 1 }"
  GIT_DIFF_PATCHID_OPTIONS_VERSION = "1"
  GIT_FETCH_OPTIONS_INIT = "{ 1 , { 1 } , GIT_FETCH_PRUNE_UNSPECIFIED , 1 , GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED , { 1 } }"
  GIT_FETCH_OPTIONS_VERSION = "1"
  GIT_IDXENTRY_NAMEMASK = "( 0x0fff )"
  GIT_IDXENTRY_STAGEMASK = "( 0x3000 )"
  GIT_IDXENTRY_STAGESHIFT = "12"
  GIT_MERGE_CONFLICT_MARKER_SIZE = "7"
  GIT_MERGE_FILE_INPUT_INIT = "{ 1 }"
  GIT_MERGE_FILE_INPUT_VERSION = "1"
  GIT_MERGE_FILE_OPTIONS_INIT = "{ 1 }"
  GIT_MERGE_FILE_OPTIONS_VERSION = "1"
  GIT_MERGE_OPTIONS_INIT = "{ 1 , GIT_MERGE_FIND_RENAMES }"
  GIT_MERGE_OPTIONS_VERSION = "1"
  GIT_OID_HEXSZ = "( 20 * 2 )"
  GIT_OID_HEX_ZERO = "\"0000000000000000000000000000000000000000\""
  GIT_OID_MINPREFIXLEN = "4"
  GIT_OID_RAWSZ = "20"
  GIT_PATH_LIST_SEPARATOR = "':'"
  GIT_PATH_MAX = "4096"
  GIT_PROXY_OPTIONS_INIT = "{ 1 }"
  GIT_PROXY_OPTIONS_VERSION = "1"
  GIT_PUSH_OPTIONS_INIT = "{ 1 , 0 , { 1 } , { 1 } }"
  GIT_PUSH_OPTIONS_VERSION = "1"
  GIT_REBASE_NO_OPERATION = "( 18446744073709551615UL )"
  GIT_REBASE_OPTIONS_INIT = "{ 1 , 0 , 0 , ( ( void * ) 0 ) , { 1 , GIT_MERGE_FIND_RENAMES } , { 1 } }"
  GIT_REBASE_OPTIONS_VERSION = "1"
  GIT_REMOTE_CALLBACKS_INIT = "{ 1 }"
  GIT_REMOTE_CALLBACKS_VERSION = "1"
  GIT_REPOSITORY_INIT_OPTIONS_INIT = "{ 1 }"
  GIT_REPOSITORY_INIT_OPTIONS_VERSION = "1"
  GIT_REVERT_OPTIONS_INIT = "{ 1 , 0 , { 1 , GIT_MERGE_FIND_RENAMES } , { 1 } }"
  GIT_REVERT_OPTIONS_VERSION = "1"
  GIT_STASH_APPLY_OPTIONS_INIT = "{ 1 , GIT_STASH_APPLY_DEFAULT , { 1 } }"
  GIT_STASH_APPLY_OPTIONS_VERSION = "1"
  GIT_STATUS_OPTIONS_INIT = "{ 1 }"
  GIT_STATUS_OPTIONS_VERSION = "1"
  GIT_STATUS_OPT_DEFAULTS = "( GIT_STATUS_OPT_INCLUDE_IGNORED | GIT_STATUS_OPT_INCLUDE_UNTRACKED | GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS )"
  GIT_SUBMODULE_STATUS__INDEX_FLAGS = "0x0070u"
  GIT_SUBMODULE_STATUS__IN_FLAGS = "0x000Fu"
  GIT_SUBMODULE_STATUS__WD_FLAGS = "0x3F80u"
  GIT_SUBMODULE_UPDATE_OPTIONS_INIT = "{ 1 , { 1 , GIT_CHECKOUT_SAFE } , { 1 , { 1 } , GIT_FETCH_PRUNE_UNSPECIFIED , 1 , GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED , { 1 } } , 1 }"
  GIT_SUBMODULE_UPDATE_OPTIONS_VERSION = "1"
  GIT_WORKTREE_ADD_OPTIONS_INIT = "{ 1 , 0 }"
  GIT_WORKTREE_ADD_OPTIONS_VERSION = "1"
  GIT_WORKTREE_PRUNE_OPTIONS_INIT = "{ 1 , 0 }"
  GIT_WORKTREE_PRUNE_OPTIONS_VERSION = "1"
  LIBGIT2_SOVERSION = "27"
  LIBGIT2_VERSION = "\"0.27.7\""
  LIBGIT2_VER_MAJOR = "0"
  LIBGIT2_VER_MINOR = "27"
  LIBGIT2_VER_PATCH = "0"
  LIBGIT2_VER_REVISION = "7"

  attach_function :git_libgit2_version, [:pointer, :pointer, :pointer], :void

  enum :git_feature_t, [:GIT_FEATURE_THREADS, 1, :GIT_FEATURE_HTTPS, 2, :GIT_FEATURE_SSH, 4, :GIT_FEATURE_NSEC, 8]


  attach_function :git_libgit2_features, [], :int32

  enum :git_libgit2_opt_t, [:GIT_OPT_GET_MWINDOW_SIZE, 0, :GIT_OPT_SET_MWINDOW_SIZE, 1, :GIT_OPT_GET_MWINDOW_MAPPED_LIMIT, 2, :GIT_OPT_SET_MWINDOW_MAPPED_LIMIT, 3, :GIT_OPT_GET_SEARCH_PATH, 4, :GIT_OPT_SET_SEARCH_PATH, 5, :GIT_OPT_SET_CACHE_OBJECT_LIMIT, 6, :GIT_OPT_SET_CACHE_MAX_SIZE, 7, :GIT_OPT_ENABLE_CACHING, 8, :GIT_OPT_GET_CACHED_MEMORY, 9, :GIT_OPT_GET_TEMPLATE_PATH, 10, :GIT_OPT_SET_TEMPLATE_PATH, 11, :GIT_OPT_SET_SSL_CERT_LOCATIONS, 12, :GIT_OPT_SET_USER_AGENT, 13, :GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 14, :GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION, 15, :GIT_OPT_SET_SSL_CIPHERS, 16, :GIT_OPT_GET_USER_AGENT, 17, :GIT_OPT_ENABLE_OFS_DELTA, 18, :GIT_OPT_ENABLE_FSYNC_GITDIR, 19, :GIT_OPT_GET_WINDOWS_SHAREMODE, 20, :GIT_OPT_SET_WINDOWS_SHAREMODE, 21, :GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 22]


  attach_function :git_libgit2_opts, [:int32], :int32

  typedef :int64, :git_off_t

  typedef :int64, :git_time_t

  enum :git_otype, [:GIT_OBJ_ANY, -2, :GIT_OBJ_BAD, -1, :GIT_OBJ__EXT1, 0, :GIT_OBJ_COMMIT, 1, :GIT_OBJ_TREE, 2, :GIT_OBJ_BLOB, 3, :GIT_OBJ_TAG, 4, :GIT_OBJ__EXT2, 5, :GIT_OBJ_OFS_DELTA, 6, :GIT_OBJ_REF_DELTA, 7]


  class GitOdb < FFI::Struct
  end


  class GitOdbBackend < FFI::Struct
  end


  class GitOdbObject < FFI::Struct
  end


  class GitOdbStream < FFI::Struct
  end


  class GitOdbWritepack < FFI::Struct
  end


  class GitRefdb < FFI::Struct
  end


  class GitRefdbBackend < FFI::Struct
  end


  class GitRepository < FFI::Struct
  end


  class GitWorktree < FFI::Struct
  end


  class GitObject < FFI::Struct
  end


  class GitRevwalk < FFI::Struct
  end


  class GitTag < FFI::Struct
  end


  class GitBlob < FFI::Struct
  end


  class GitCommit < FFI::Struct
  end


  class GitTreeEntry < FFI::Struct
  end


  class GitTree < FFI::Struct
  end


  class GitTreebuilder < FFI::Struct
  end


  class GitIndex < FFI::Struct
  end


  class GitIndexConflictIterator < FFI::Struct
  end


  class GitConfig < FFI::Struct
  end


  class GitConfigBackend < FFI::Struct
  end


  class GitReflogEntry < FFI::Struct
  end


  class GitReflog < FFI::Struct
  end


  class GitNote < FFI::Struct
  end


  class GitPackbuilder < FFI::Struct
  end


  class GitTime < FFI::Struct
    layout :time, :git_time_t, :offset, :int32, :sign, :int8
  end


  class GitSignature < FFI::Struct
    layout :name, :pointer, :email, :pointer, :when, GitTime.by_value
  end


  class GitReference < FFI::Struct
  end


  class GitReferenceIterator < FFI::Struct
  end


  class GitTransaction < FFI::Struct
  end


  class GitAnnotatedCommit < FFI::Struct
  end


  class GitMergeResult < FFI::Struct
  end


  class GitStatusList < FFI::Struct
  end


  class GitRebase < FFI::Struct
  end


  enum :git_ref_t, [:GIT_REF_INVALID, 0, :GIT_REF_OID, 1, :GIT_REF_SYMBOLIC, 2, :GIT_REF_LISTALL, 3]


  enum :git_branch_t, [:GIT_BRANCH_LOCAL, 1, :GIT_BRANCH_REMOTE, 2, :GIT_BRANCH_ALL, 3]


  enum :git_filemode_t, [:GIT_FILEMODE_UNREADABLE, 0, :GIT_FILEMODE_TREE, 16384, :GIT_FILEMODE_BLOB, 33188, :GIT_FILEMODE_BLOB_EXECUTABLE, 33261, :GIT_FILEMODE_LINK, 40960, :GIT_FILEMODE_COMMIT, 57344]


  class GitRefspec < FFI::Struct
  end


  class GitRemote < FFI::Struct
  end


  class GitTransport < FFI::Struct
  end


  class GitPush < FFI::Struct
  end


  class GitRemoteHead < FFI::Struct
  end


  class GitRemoteCallback < FFI::Struct
  end


  class GitTransferProgress < FFI::Struct
    layout :total_objects, :uint32, :indexed_objects, :uint32, :received_objects, :uint32, :local_objects, :uint32, :total_deltas, :uint32, :indexed_deltas, :uint32, :received_bytes, :uint64
  end


  callback :git_transfer_progress_cb, [:pointer, :pointer], :int32

  callback :git_transport_message_cb, [:pointer, :int32, :pointer], :int32

  enum :git_cert_t, [:GIT_CERT_NONE, 0, :GIT_CERT_X509, 1, :GIT_CERT_HOSTKEY_LIBSSH2, 2, :GIT_CERT_STRARRAY, 3]


  class GitCert < FFI::Struct
    layout :cert_type, :git_cert_t
  end


  callback :git_transport_certificate_check_cb, [GitCert.by_ref, :int32, :pointer, :pointer], :int32

  class GitSubmodule < FFI::Struct
  end


  enum :git_submodule_update_t, [:GIT_SUBMODULE_UPDATE_CHECKOUT, 1, :GIT_SUBMODULE_UPDATE_REBASE, 2, :GIT_SUBMODULE_UPDATE_MERGE, 3, :GIT_SUBMODULE_UPDATE_NONE, 4, :GIT_SUBMODULE_UPDATE_DEFAULT, 0]


  enum :git_submodule_ignore_t, [:GIT_SUBMODULE_IGNORE_UNSPECIFIED, -1, :GIT_SUBMODULE_IGNORE_NONE, 1, :GIT_SUBMODULE_IGNORE_UNTRACKED, 2, :GIT_SUBMODULE_IGNORE_DIRTY, 3, :GIT_SUBMODULE_IGNORE_ALL, 4]


  enum :git_submodule_recurse_t, [:GIT_SUBMODULE_RECURSE_NO, 0, :GIT_SUBMODULE_RECURSE_YES, 1, :GIT_SUBMODULE_RECURSE_ONDEMAND, 2]


  class GitWritestream < FFI::Struct
  end


  class GitWritestream < FFI::Struct
    layout :write, callback([GitWritestream.by_ref, :pointer, :uint64], :int32), :close, callback([GitWritestream.by_ref], :int32), :free, callback([GitWritestream.by_ref], :void)
  end

  class GitOid < FFI::Struct
    layout :id, [:uint8, 20]
  end


  attach_function :git_oid_fromstr, [GitOid.by_ref, :pointer], :int32

  attach_function :git_oid_fromstrp, [GitOid.by_ref, :pointer], :int32

  attach_function :git_oid_fromstrn, [GitOid.by_ref, :pointer, :uint64], :int32

  attach_function :git_oid_fromraw, [GitOid.by_ref, :pointer], :void

  attach_function :git_oid_fmt, [:pointer, :pointer], :void

  attach_function :git_oid_nfmt, [:pointer, :uint64, :pointer], :void

  attach_function :git_oid_pathfmt, [:pointer, :pointer], :void

  attach_function :git_oid_tostr_s, [:pointer], :pointer

  attach_function :git_oid_tostr, [:pointer, :uint64, :pointer], :pointer

  attach_function :git_oid_cpy, [GitOid.by_ref, :pointer], :void

  attach_function :git_oid_cmp, [:pointer, :pointer], :int32

  attach_function :git_oid_equal, [:pointer, :pointer], :int32

  attach_function :git_oid_ncmp, [:pointer, :pointer, :uint64], :int32

  attach_function :git_oid_streq, [:pointer, :pointer], :int32

  attach_function :git_oid_strcmp, [:pointer, :pointer], :int32

  attach_function :git_oid_iszero, [:pointer], :int32

  class GitOidShorten < FFI::Struct
  end


  attach_function :git_oid_shorten_new, [:uint64], GitOidShorten.by_ref

  attach_function :git_oid_shorten_add, [GitOidShorten.by_ref, :pointer], :int32

  attach_function :git_oid_shorten_free, [GitOidShorten.by_ref], :void

  class GitBuf < FFI::Struct
    layout :ptr, :pointer, :asize, :uint64, :size, :uint64
  end


  attach_function :git_buf_free, [GitBuf.by_ref], :void

  attach_function :git_buf_grow, [GitBuf.by_ref, :uint64], :int32

  attach_function :git_buf_set, [GitBuf.by_ref, :pointer, :uint64], :int32

  attach_function :git_buf_is_binary, [:pointer], :int32

  attach_function :git_buf_contains_nul, [:pointer], :int32

  attach_function :git_repository_open, [:pointer, :pointer], :int32

  attach_function :git_repository_open_from_worktree, [:pointer, GitWorktree.by_ref], :int32

  attach_function :git_repository_wrap_odb, [:pointer, GitOdb.by_ref], :int32

  attach_function :git_repository_discover, [GitBuf.by_ref, :pointer, :int32, :pointer], :int32

  enum :git_repository_open_flag_t, [:GIT_REPOSITORY_OPEN_NO_SEARCH, 1, :GIT_REPOSITORY_OPEN_CROSS_FS, 2, :GIT_REPOSITORY_OPEN_BARE, 4, :GIT_REPOSITORY_OPEN_NO_DOTGIT, 8, :GIT_REPOSITORY_OPEN_FROM_ENV, 16]


  attach_function :git_repository_open_ext, [:pointer, :pointer, :uint32, :pointer], :int32

  attach_function :git_repository_open_bare, [:pointer, :pointer], :int32

  attach_function :git_repository_free, [GitRepository.by_ref], :void

  attach_function :git_repository_init, [:pointer, :pointer, :uint32], :int32

  enum :git_repository_init_flag_t, [:GIT_REPOSITORY_INIT_BARE, 1, :GIT_REPOSITORY_INIT_NO_REINIT, 2, :GIT_REPOSITORY_INIT_NO_DOTGIT_DIR, 4, :GIT_REPOSITORY_INIT_MKDIR, 8, :GIT_REPOSITORY_INIT_MKPATH, 16, :GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE, 32, :GIT_REPOSITORY_INIT_RELATIVE_GITLINK, 64]


  enum :git_repository_init_mode_t, [:GIT_REPOSITORY_INIT_SHARED_UMASK, 0, :GIT_REPOSITORY_INIT_SHARED_GROUP, 1533, :GIT_REPOSITORY_INIT_SHARED_ALL, 1535]


  class GitRepositoryInitOption < FFI::Struct
    layout :version, :uint32, :flags, :uint32, :mode, :uint32, :workdir_path, :pointer, :description, :pointer, :template_path, :pointer, :initial_head, :pointer, :origin_url, :pointer
  end


  attach_function :git_repository_init_init_options, [GitRepositoryInitOption.by_ref, :uint32], :int32

  attach_function :git_repository_init_ext, [:pointer, :pointer, GitRepositoryInitOption.by_ref], :int32

  attach_function :git_repository_head, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_repository_head_for_worktree, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_repository_head_detached, [GitRepository.by_ref], :int32

  attach_function :git_repository_head_detached_for_worktree, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_repository_head_unborn, [GitRepository.by_ref], :int32

  attach_function :git_repository_is_empty, [GitRepository.by_ref], :int32

  enum :git_repository_item_t, [:GIT_REPOSITORY_ITEM_GITDIR, 0, :GIT_REPOSITORY_ITEM_WORKDIR, 1, :GIT_REPOSITORY_ITEM_COMMONDIR, 2, :GIT_REPOSITORY_ITEM_INDEX, 3, :GIT_REPOSITORY_ITEM_OBJECTS, 4, :GIT_REPOSITORY_ITEM_REFS, 5, :GIT_REPOSITORY_ITEM_PACKED_REFS, 6, :GIT_REPOSITORY_ITEM_REMOTES, 7, :GIT_REPOSITORY_ITEM_CONFIG, 8, :GIT_REPOSITORY_ITEM_INFO, 9, :GIT_REPOSITORY_ITEM_HOOKS, 10, :GIT_REPOSITORY_ITEM_LOGS, 11, :GIT_REPOSITORY_ITEM_MODULES, 12, :GIT_REPOSITORY_ITEM_WORKTREES, 13]


  attach_function :git_repository_item_path, [GitBuf.by_ref, :pointer, :git_repository_item_t], :int32

  attach_function :git_repository_path, [:pointer], :pointer

  attach_function :git_repository_workdir, [:pointer], :pointer

  attach_function :git_repository_commondir, [:pointer], :pointer

  attach_function :git_repository_set_workdir, [GitRepository.by_ref, :pointer, :int32], :int32

  attach_function :git_repository_is_bare, [:pointer], :int32

  attach_function :git_repository_is_worktree, [:pointer], :int32

  attach_function :git_repository_config, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_repository_config_snapshot, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_repository_odb, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_repository_refdb, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_repository_index, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_repository_message, [GitBuf.by_ref, GitRepository.by_ref], :int32

  attach_function :git_repository_message_remove, [GitRepository.by_ref], :int32

  attach_function :git_repository_state_cleanup, [GitRepository.by_ref], :int32

  callback :git_repository_fetchhead_foreach_cb, [:pointer, :pointer, :pointer, :uint32, :pointer], :int32

  attach_function :git_repository_fetchhead_foreach, [GitRepository.by_ref, :git_repository_fetchhead_foreach_cb, :pointer], :int32

  callback :git_repository_mergehead_foreach_cb, [:pointer, :pointer], :int32

  attach_function :git_repository_mergehead_foreach, [GitRepository.by_ref, :git_repository_mergehead_foreach_cb, :pointer], :int32

  attach_function :git_repository_hashfile, [GitOid.by_ref, GitRepository.by_ref, :pointer, :git_otype, :pointer], :int32

  attach_function :git_repository_set_head, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_repository_set_head_detached, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_repository_set_head_detached_from_annotated, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_repository_detach_head, [GitRepository.by_ref], :int32

  enum :git_repository_state_t, [:GIT_REPOSITORY_STATE_NONE, 0, :GIT_REPOSITORY_STATE_MERGE, 1, :GIT_REPOSITORY_STATE_REVERT, 2, :GIT_REPOSITORY_STATE_REVERT_SEQUENCE, 3, :GIT_REPOSITORY_STATE_CHERRYPICK, 4, :GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE, 5, :GIT_REPOSITORY_STATE_BISECT, 6, :GIT_REPOSITORY_STATE_REBASE, 7, :GIT_REPOSITORY_STATE_REBASE_INTERACTIVE, 8, :GIT_REPOSITORY_STATE_REBASE_MERGE, 9, :GIT_REPOSITORY_STATE_APPLY_MAILBOX, 10, :GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE, 11]


  attach_function :git_repository_state, [GitRepository.by_ref], :int32

  attach_function :git_repository_set_namespace, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_repository_get_namespace, [GitRepository.by_ref], :pointer

  attach_function :git_repository_is_shallow, [GitRepository.by_ref], :int32

  attach_function :git_repository_ident, [:pointer, :pointer, :pointer], :int32

  attach_function :git_repository_set_ident, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_annotated_commit_from_ref, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_annotated_commit_from_fetchhead, [:pointer, GitRepository.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_annotated_commit_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_annotated_commit_from_revspec, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_annotated_commit_id, [:pointer], :pointer

  attach_function :git_annotated_commit_free, [GitAnnotatedCommit.by_ref], :void

  enum :git_attr_t, [:GIT_ATTR_UNSPECIFIED_T, 0, :GIT_ATTR_TRUE_T, 1, :GIT_ATTR_FALSE_T, 2, :GIT_ATTR_VALUE_T, 3]


  attach_function :git_attr_value, [:pointer], :git_attr_t

  attach_function :git_attr_get, [:pointer, GitRepository.by_ref, :uint32, :pointer, :pointer], :int32

  attach_function :git_attr_get_many, [:pointer, GitRepository.by_ref, :uint32, :pointer, :uint64, :pointer], :int32

  callback :git_attr_foreach_cb, [:pointer, :pointer, :pointer], :int32

  attach_function :git_attr_foreach, [GitRepository.by_ref, :uint32, :pointer, :git_attr_foreach_cb, :pointer], :int32

  attach_function :git_attr_cache_flush, [GitRepository.by_ref], :void

  attach_function :git_attr_add_macro, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_object_lookup, [:pointer, GitRepository.by_ref, :pointer, :git_otype], :int32

  attach_function :git_object_lookup_prefix, [:pointer, GitRepository.by_ref, :pointer, :uint64, :git_otype], :int32

  attach_function :git_object_lookup_bypath, [:pointer, :pointer, :pointer, :git_otype], :int32

  attach_function :git_object_id, [:pointer], :pointer

  attach_function :git_object_short_id, [GitBuf.by_ref, :pointer], :int32

  attach_function :git_object_type, [:pointer], :git_otype

  attach_function :git_object_owner, [:pointer], GitRepository.by_ref

  attach_function :git_object_free, [GitObject.by_ref], :void

  attach_function :git_object_type2string, [:git_otype], :pointer

  attach_function :git_object_string2type, [:pointer], :git_otype

  attach_function :git_object_typeisloose, [:git_otype], :int32

  attach_function :git_object__size, [:git_otype], :uint64

  attach_function :git_object_peel, [:pointer, :pointer, :git_otype], :int32

  attach_function :git_object_dup, [:pointer, GitObject.by_ref], :int32

  attach_function :git_blob_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_blob_lookup_prefix, [:pointer, GitRepository.by_ref, :pointer, :uint64], :int32

  attach_function :git_blob_free, [GitBlob.by_ref], :void

  attach_function :git_blob_id, [:pointer], :pointer

  attach_function :git_blob_owner, [:pointer], GitRepository.by_ref

  attach_function :git_blob_rawcontent, [:pointer], :pointer

  attach_function :git_blob_rawsize, [:pointer], :git_off_t

  attach_function :git_blob_filtered_content, [GitBuf.by_ref, GitBlob.by_ref, :pointer, :int32], :int32

  attach_function :git_blob_create_fromworkdir, [GitOid.by_ref, GitRepository.by_ref, :pointer], :int32

  attach_function :git_blob_create_fromdisk, [GitOid.by_ref, GitRepository.by_ref, :pointer], :int32

  attach_function :git_blob_create_fromstream, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_blob_create_fromstream_commit, [GitOid.by_ref, GitWritestream.by_ref], :int32

  attach_function :git_blob_create_frombuffer, [GitOid.by_ref, GitRepository.by_ref, :pointer, :uint64], :int32

  attach_function :git_blob_is_binary, [:pointer], :int32

  attach_function :git_blob_dup, [:pointer, GitBlob.by_ref], :int32

  enum :git_blame_flag_t, [:GIT_BLAME_NORMAL, 0, :GIT_BLAME_TRACK_COPIES_SAME_FILE, 1, :GIT_BLAME_TRACK_COPIES_SAME_COMMIT_MOVES, 2, :GIT_BLAME_TRACK_COPIES_SAME_COMMIT_COPIES, 4, :GIT_BLAME_TRACK_COPIES_ANY_COMMIT_COPIES, 8, :GIT_BLAME_FIRST_PARENT, 16]


  class GitBlameOption < FFI::Struct
    layout :version, :uint32, :flags, :uint32, :min_match_characters, :uint16, :newest_commit, GitOid.by_value, :oldest_commit, GitOid.by_value, :min_line, :uint64, :max_line, :uint64
  end


  attach_function :git_blame_init_options, [GitBlameOption.by_ref, :uint32], :int32

  class GitBlameHunk < FFI::Struct
    layout :lines_in_hunk, :uint64, :final_commit_id, GitOid.by_value, :final_start_line_number, :uint64, :final_signature, GitSignature.by_ref, :orig_commit_id, GitOid.by_value, :orig_path, :pointer, :orig_start_line_number, :uint64, :orig_signature, GitSignature.by_ref, :boundary, :int8
  end


  class GitBlame < FFI::Struct
  end


  attach_function :git_blame_get_hunk_count, [GitBlame.by_ref], :uint32

  attach_function :git_blame_get_hunk_byindex, [GitBlame.by_ref, :uint32], :pointer

  attach_function :git_blame_get_hunk_byline, [GitBlame.by_ref, :uint64], :pointer

  attach_function :git_blame_file, [:pointer, GitRepository.by_ref, :pointer, GitBlameOption.by_ref], :int32

  attach_function :git_blame_buffer, [:pointer, GitBlame.by_ref, :pointer, :uint64], :int32

  attach_function :git_blame_free, [GitBlame.by_ref], :void

  attach_function :git_branch_create, [:pointer, GitRepository.by_ref, :pointer, :pointer, :int32], :int32

  attach_function :git_branch_create_from_annotated, [:pointer, GitRepository.by_ref, :pointer, :pointer, :int32], :int32

  attach_function :git_branch_delete, [GitReference.by_ref], :int32

  class GitBranchIterator < FFI::Struct
  end


  attach_function :git_branch_iterator_new, [:pointer, GitRepository.by_ref, :git_branch_t], :int32

  attach_function :git_branch_next, [:pointer, :pointer, GitBranchIterator.by_ref], :int32

  attach_function :git_branch_iterator_free, [GitBranchIterator.by_ref], :void

  attach_function :git_branch_move, [:pointer, GitReference.by_ref, :pointer, :int32], :int32

  attach_function :git_branch_lookup, [:pointer, GitRepository.by_ref, :pointer, :git_branch_t], :int32

  attach_function :git_branch_name, [:pointer, :pointer], :int32

  attach_function :git_branch_upstream, [:pointer, :pointer], :int32

  attach_function :git_branch_set_upstream, [GitReference.by_ref, :pointer], :int32

  attach_function :git_branch_upstream_name, [GitBuf.by_ref, GitRepository.by_ref, :pointer], :int32

  attach_function :git_branch_is_head, [:pointer], :int32

  attach_function :git_branch_is_checked_out, [:pointer], :int32

  attach_function :git_branch_remote_name, [GitBuf.by_ref, GitRepository.by_ref, :pointer], :int32

  attach_function :git_branch_upstream_remote, [GitBuf.by_ref, GitRepository.by_ref, :pointer], :int32

  attach_function :git_tree_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_tree_lookup_prefix, [:pointer, GitRepository.by_ref, :pointer, :uint64], :int32

  attach_function :git_tree_free, [GitTree.by_ref], :void

  attach_function :git_tree_id, [:pointer], :pointer

  attach_function :git_tree_owner, [:pointer], GitRepository.by_ref

  attach_function :git_tree_entrycount, [:pointer], :uint64

  attach_function :git_tree_entry_byname, [:pointer, :pointer], :pointer

  attach_function :git_tree_entry_byindex, [:pointer, :uint64], :pointer

  attach_function :git_tree_entry_byid, [:pointer, :pointer], :pointer

  attach_function :git_tree_entry_bypath, [:pointer, :pointer, :pointer], :int32

  attach_function :git_tree_entry_dup, [:pointer, :pointer], :int32

  attach_function :git_tree_entry_free, [GitTreeEntry.by_ref], :void

  attach_function :git_tree_entry_name, [:pointer], :pointer

  attach_function :git_tree_entry_id, [:pointer], :pointer

  attach_function :git_tree_entry_type, [:pointer], :git_otype

  attach_function :git_tree_entry_filemode, [:pointer], :git_filemode_t

  attach_function :git_tree_entry_filemode_raw, [:pointer], :git_filemode_t

  attach_function :git_tree_entry_cmp, [:pointer, :pointer], :int32

  attach_function :git_tree_entry_to_object, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_treebuilder_new, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_treebuilder_clear, [GitTreebuilder.by_ref], :void

  attach_function :git_treebuilder_entrycount, [GitTreebuilder.by_ref], :uint32

  attach_function :git_treebuilder_free, [GitTreebuilder.by_ref], :void

  attach_function :git_treebuilder_get, [GitTreebuilder.by_ref, :pointer], :pointer

  attach_function :git_treebuilder_insert, [:pointer, GitTreebuilder.by_ref, :pointer, :pointer, :git_filemode_t], :int32

  attach_function :git_treebuilder_remove, [GitTreebuilder.by_ref, :pointer], :int32

  callback :git_treebuilder_filter_cb, [:pointer, :pointer], :int32

  attach_function :git_treebuilder_filter, [GitTreebuilder.by_ref, :git_treebuilder_filter_cb, :pointer], :void

  attach_function :git_treebuilder_write, [GitOid.by_ref, GitTreebuilder.by_ref], :int32

  attach_function :git_treebuilder_write_with_buffer, [GitOid.by_ref, GitTreebuilder.by_ref, GitBuf.by_ref], :int32

  callback :git_treewalk_cb, [:pointer, :pointer, :pointer], :int32

  enum :git_treewalk_mode, [:GIT_TREEWALK_PRE, 0, :GIT_TREEWALK_POST, 1]


  attach_function :git_tree_walk, [:pointer, :git_treewalk_mode, :git_treewalk_cb, :pointer], :int32

  attach_function :git_tree_dup, [:pointer, GitTree.by_ref], :int32

  enum :git_tree_update_t, [:GIT_TREE_UPDATE_UPSERT, 0, :GIT_TREE_UPDATE_REMOVE, 1]


  class GitTreeUpdate < FFI::Struct
    layout :action, :git_tree_update_t, :id, GitOid.by_value, :filemode, :git_filemode_t, :path, :pointer
  end


  attach_function :git_tree_create_updated, [GitOid.by_ref, GitRepository.by_ref, GitTree.by_ref, :uint64, :pointer], :int32

  class GitStrarray < FFI::Struct
    layout :strings, :pointer, :count, :uint64
  end


  attach_function :git_strarray_free, [GitStrarray.by_ref], :void

  attach_function :git_strarray_copy, [GitStrarray.by_ref, :pointer], :int32

  attach_function :git_reference_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_reference_name_to_id, [GitOid.by_ref, GitRepository.by_ref, :pointer], :int32

  attach_function :git_reference_dwim, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_reference_symbolic_create_matching, [:pointer, GitRepository.by_ref, :pointer, :pointer, :int32, :pointer, :pointer], :int32

  attach_function :git_reference_symbolic_create, [:pointer, GitRepository.by_ref, :pointer, :pointer, :int32, :pointer], :int32

  attach_function :git_reference_create, [:pointer, GitRepository.by_ref, :pointer, :pointer, :int32, :pointer], :int32

  attach_function :git_reference_create_matching, [:pointer, GitRepository.by_ref, :pointer, :pointer, :int32, :pointer, :pointer], :int32

  attach_function :git_reference_target, [:pointer], :pointer

  attach_function :git_reference_target_peel, [:pointer], :pointer

  attach_function :git_reference_symbolic_target, [:pointer], :pointer

  attach_function :git_reference_type, [:pointer], :git_ref_t

  attach_function :git_reference_name, [:pointer], :pointer

  attach_function :git_reference_resolve, [:pointer, :pointer], :int32

  attach_function :git_reference_owner, [:pointer], GitRepository.by_ref

  attach_function :git_reference_symbolic_set_target, [:pointer, GitReference.by_ref, :pointer, :pointer], :int32

  attach_function :git_reference_set_target, [:pointer, GitReference.by_ref, :pointer, :pointer], :int32

  attach_function :git_reference_rename, [:pointer, GitReference.by_ref, :pointer, :int32, :pointer], :int32

  attach_function :git_reference_delete, [GitReference.by_ref], :int32

  attach_function :git_reference_remove, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_reference_list, [GitStrarray.by_ref, GitRepository.by_ref], :int32

  callback :git_reference_foreach_cb, [GitReference.by_ref, :pointer], :int32

  callback :git_reference_foreach_name_cb, [:pointer, :pointer], :int32

  attach_function :git_reference_foreach, [GitRepository.by_ref, :git_reference_foreach_cb, :pointer], :int32

  attach_function :git_reference_foreach_name, [GitRepository.by_ref, :git_reference_foreach_name_cb, :pointer], :int32

  attach_function :git_reference_dup, [:pointer, GitReference.by_ref], :int32

  attach_function :git_reference_free, [GitReference.by_ref], :void

  attach_function :git_reference_cmp, [:pointer, :pointer], :int32

  attach_function :git_reference_iterator_new, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_reference_iterator_glob_new, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_reference_next, [:pointer, GitReferenceIterator.by_ref], :int32

  attach_function :git_reference_next_name, [:pointer, GitReferenceIterator.by_ref], :int32

  attach_function :git_reference_iterator_free, [GitReferenceIterator.by_ref], :void

  attach_function :git_reference_foreach_glob, [GitRepository.by_ref, :pointer, :git_reference_foreach_name_cb, :pointer], :int32

  attach_function :git_reference_has_log, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_reference_ensure_log, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_reference_is_branch, [:pointer], :int32

  attach_function :git_reference_is_remote, [:pointer], :int32

  attach_function :git_reference_is_tag, [:pointer], :int32

  attach_function :git_reference_is_note, [:pointer], :int32

  enum :git_reference_normalize_t, [:GIT_REF_FORMAT_NORMAL, 0, :GIT_REF_FORMAT_ALLOW_ONELEVEL, 1, :GIT_REF_FORMAT_REFSPEC_PATTERN, 2, :GIT_REF_FORMAT_REFSPEC_SHORTHAND, 4]


  attach_function :git_reference_normalize_name, [:pointer, :uint64, :pointer, :uint32], :int32

  attach_function :git_reference_peel, [:pointer, GitReference.by_ref, :git_otype], :int32

  attach_function :git_reference_is_valid_name, [:pointer], :int32

  attach_function :git_reference_shorthand, [:pointer], :pointer

  enum :git_diff_option_t, [:GIT_DIFF_NORMAL, 0, :GIT_DIFF_REVERSE, 1, :GIT_DIFF_INCLUDE_IGNORED, 2, :GIT_DIFF_RECURSE_IGNORED_DIRS, 4, :GIT_DIFF_INCLUDE_UNTRACKED, 8, :GIT_DIFF_RECURSE_UNTRACKED_DIRS, 16, :GIT_DIFF_INCLUDE_UNMODIFIED, 32, :GIT_DIFF_INCLUDE_TYPECHANGE, 64, :GIT_DIFF_INCLUDE_TYPECHANGE_TREES, 128, :GIT_DIFF_IGNORE_FILEMODE, 256, :GIT_DIFF_IGNORE_SUBMODULES, 512, :GIT_DIFF_IGNORE_CASE, 1024, :GIT_DIFF_INCLUDE_CASECHANGE, 2048, :GIT_DIFF_DISABLE_PATHSPEC_MATCH, 4096, :GIT_DIFF_SKIP_BINARY_CHECK, 8192, :GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS, 16384, :GIT_DIFF_UPDATE_INDEX, 32768, :GIT_DIFF_INCLUDE_UNREADABLE, 65536, :GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED, 131072, :GIT_DIFF_FORCE_TEXT, 1048576, :GIT_DIFF_FORCE_BINARY, 2097152, :GIT_DIFF_IGNORE_WHITESPACE, 4194304, :GIT_DIFF_IGNORE_WHITESPACE_CHANGE, 8388608, :GIT_DIFF_IGNORE_WHITESPACE_EOL, 16777216, :GIT_DIFF_SHOW_UNTRACKED_CONTENT, 33554432, :GIT_DIFF_SHOW_UNMODIFIED, 67108864, :GIT_DIFF_PATIENCE, 268435456, :GIT_DIFF_MINIMAL, 536870912, :GIT_DIFF_SHOW_BINARY, 1073741824, :GIT_DIFF_INDENT_HEURISTIC, 2147483648]


  class GitDiff < FFI::Struct
  end


  enum :git_diff_flag_t, [:GIT_DIFF_FLAG_BINARY, 1, :GIT_DIFF_FLAG_NOT_BINARY, 2, :GIT_DIFF_FLAG_VALID_ID, 4, :GIT_DIFF_FLAG_EXISTS, 8]


  enum :git_delta_t, [:GIT_DELTA_UNMODIFIED, 0, :GIT_DELTA_ADDED, 1, :GIT_DELTA_DELETED, 2, :GIT_DELTA_MODIFIED, 3, :GIT_DELTA_RENAMED, 4, :GIT_DELTA_COPIED, 5, :GIT_DELTA_IGNORED, 6, :GIT_DELTA_UNTRACKED, 7, :GIT_DELTA_TYPECHANGE, 8, :GIT_DELTA_UNREADABLE, 9, :GIT_DELTA_CONFLICTED, 10]


  class GitDiffFile < FFI::Struct
    layout :id, GitOid.by_value, :path, :pointer, :size, :git_off_t, :flags, :uint32, :mode, :uint16, :id_abbrev, :uint16
  end


  class GitDiffDeltum < FFI::Struct
    layout :status, :git_delta_t, :flags, :uint32, :similarity, :uint16, :nfiles, :uint16, :old_file, GitDiffFile.by_value, :new_file, GitDiffFile.by_value
  end


  callback :git_diff_notify_cb, [:pointer, :pointer, :pointer, :pointer], :int32

  callback :git_diff_progress_cb, [:pointer, :pointer, :pointer, :pointer], :int32

  class GitDiffOption < FFI::Struct
    layout :version, :uint32, :flags, :uint32, :ignore_submodules, :git_submodule_ignore_t, :pathspec, GitStrarray.by_value, :notify_cb, :git_diff_notify_cb, :progress_cb, :git_diff_progress_cb, :payload, :pointer, :context_lines, :uint32, :interhunk_lines, :uint32, :id_abbrev, :uint16, :max_size, :git_off_t, :old_prefix, :pointer, :new_prefix, :pointer
  end


  attach_function :git_diff_init_options, [GitDiffOption.by_ref, :uint32], :int32

  callback :git_diff_file_cb, [:pointer, :float, :pointer], :int32

  enum :git_diff_binary_t, [:GIT_DIFF_BINARY_NONE, 0, :GIT_DIFF_BINARY_LITERAL, 1, :GIT_DIFF_BINARY_DELTA, 2]


  class GitDiffBinaryFile < FFI::Struct
    layout :type, :git_diff_binary_t, :data, :pointer, :datalen, :uint64, :inflatedlen, :uint64
  end


  class GitDiffBinary < FFI::Struct
    layout :contains_data, :uint32, :old_file, GitDiffBinaryFile.by_value, :new_file, GitDiffBinaryFile.by_value
  end


  callback :git_diff_binary_cb, [:pointer, :pointer, :pointer], :int32

  class GitDiffHunk < FFI::Struct
    layout :old_start, :int32, :old_lines, :int32, :new_start, :int32, :new_lines, :int32, :header_len, :uint64, :header, [:int8, 128]
  end


  callback :git_diff_hunk_cb, [:pointer, :pointer, :pointer], :int32

  enum :git_diff_line_t, [:GIT_DIFF_LINE_CONTEXT, 32, :GIT_DIFF_LINE_ADDITION, 43, :GIT_DIFF_LINE_DELETION, 45, :GIT_DIFF_LINE_CONTEXT_EOFNL, 61, :GIT_DIFF_LINE_ADD_EOFNL, 62, :GIT_DIFF_LINE_DEL_EOFNL, 60, :GIT_DIFF_LINE_FILE_HDR, 70, :GIT_DIFF_LINE_HUNK_HDR, 72, :GIT_DIFF_LINE_BINARY, 66]


  class GitDiffLine < FFI::Struct
    layout :origin, :int8, :old_lineno, :int32, :new_lineno, :int32, :num_lines, :int32, :content_len, :uint64, :content_offset, :git_off_t, :content, :pointer
  end


  callback :git_diff_line_cb, [:pointer, :pointer, :pointer, :pointer], :int32

  enum :git_diff_find_t, [:GIT_DIFF_FIND_BY_CONFIG, 0, :GIT_DIFF_FIND_RENAMES, 1, :GIT_DIFF_FIND_RENAMES_FROM_REWRITES, 2, :GIT_DIFF_FIND_COPIES, 4, :GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED, 8, :GIT_DIFF_FIND_REWRITES, 16, :GIT_DIFF_BREAK_REWRITES, 32, :GIT_DIFF_FIND_AND_BREAK_REWRITES, 48, :GIT_DIFF_FIND_FOR_UNTRACKED, 64, :GIT_DIFF_FIND_ALL, 255, :GIT_DIFF_FIND_IGNORE_LEADING_WHITESPACE, 0, :GIT_DIFF_FIND_IGNORE_WHITESPACE, 4096, :GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE, 8192, :GIT_DIFF_FIND_EXACT_MATCH_ONLY, 16384, :GIT_DIFF_BREAK_REWRITES_FOR_RENAMES_ONLY, 32768, :GIT_DIFF_FIND_REMOVE_UNMODIFIED, 65536]


  class GitDiffSimilarityMetric < FFI::Struct
    layout :file_signature, callback([:pointer, :pointer, :pointer, :pointer], :int32), :buffer_signature, callback([:pointer, :pointer, :pointer, :uint64, :pointer], :int32), :free_signature, callback([:pointer, :pointer], :void), :similarity, callback([:pointer, :pointer, :pointer, :pointer], :int32), :payload, :pointer
  end


  class GitDiffFindOption < FFI::Struct
    layout :version, :uint32, :flags, :uint32, :rename_threshold, :uint16, :rename_from_rewrite_threshold, :uint16, :copy_threshold, :uint16, :break_rewrite_threshold, :uint16, :rename_limit, :uint64, :metric, GitDiffSimilarityMetric.by_ref
  end


  attach_function :git_diff_find_init_options, [GitDiffFindOption.by_ref, :uint32], :int32

  attach_function :git_diff_free, [GitDiff.by_ref], :void

  attach_function :git_diff_tree_to_tree, [:pointer, GitRepository.by_ref, GitTree.by_ref, GitTree.by_ref, :pointer], :int32

  attach_function :git_diff_tree_to_index, [:pointer, GitRepository.by_ref, GitTree.by_ref, GitIndex.by_ref, :pointer], :int32

  attach_function :git_diff_index_to_workdir, [:pointer, GitRepository.by_ref, GitIndex.by_ref, :pointer], :int32

  attach_function :git_diff_tree_to_workdir, [:pointer, GitRepository.by_ref, GitTree.by_ref, :pointer], :int32

  attach_function :git_diff_tree_to_workdir_with_index, [:pointer, GitRepository.by_ref, GitTree.by_ref, :pointer], :int32

  attach_function :git_diff_index_to_index, [:pointer, GitRepository.by_ref, GitIndex.by_ref, GitIndex.by_ref, :pointer], :int32

  attach_function :git_diff_merge, [GitDiff.by_ref, :pointer], :int32

  attach_function :git_diff_find_similar, [GitDiff.by_ref, :pointer], :int32

  attach_function :git_diff_num_deltas, [:pointer], :uint64

  attach_function :git_diff_num_deltas_of_type, [:pointer, :git_delta_t], :uint64

  attach_function :git_diff_get_delta, [:pointer, :uint64], :pointer

  attach_function :git_diff_is_sorted_icase, [:pointer], :int32

  attach_function :git_diff_foreach, [GitDiff.by_ref, :git_diff_file_cb, :git_diff_binary_cb, :git_diff_hunk_cb, :git_diff_line_cb, :pointer], :int32

  attach_function :git_diff_status_char, [:git_delta_t], :int8

  enum :git_diff_format_t, [:GIT_DIFF_FORMAT_PATCH, 1, :GIT_DIFF_FORMAT_PATCH_HEADER, 2, :GIT_DIFF_FORMAT_RAW, 3, :GIT_DIFF_FORMAT_NAME_ONLY, 4, :GIT_DIFF_FORMAT_NAME_STATUS, 5]


  attach_function :git_diff_print, [GitDiff.by_ref, :git_diff_format_t, :git_diff_line_cb, :pointer], :int32

  attach_function :git_diff_to_buf, [GitBuf.by_ref, GitDiff.by_ref, :git_diff_format_t], :int32

  attach_function :git_diff_blobs, [:pointer, :pointer, :pointer, :pointer, :pointer, :git_diff_file_cb, :git_diff_binary_cb, :git_diff_hunk_cb, :git_diff_line_cb, :pointer], :int32

  attach_function :git_diff_blob_to_buffer, [:pointer, :pointer, :pointer, :uint64, :pointer, :pointer, :git_diff_file_cb, :git_diff_binary_cb, :git_diff_hunk_cb, :git_diff_line_cb, :pointer], :int32

  attach_function :git_diff_buffers, [:pointer, :uint64, :pointer, :pointer, :uint64, :pointer, :pointer, :git_diff_file_cb, :git_diff_binary_cb, :git_diff_hunk_cb, :git_diff_line_cb, :pointer], :int32

  attach_function :git_diff_from_buffer, [:pointer, :pointer, :uint64], :int32

  class GitDiffStat < FFI::Struct
  end


  enum :git_diff_stats_format_t, [:GIT_DIFF_STATS_NONE, 0, :GIT_DIFF_STATS_FULL, 1, :GIT_DIFF_STATS_SHORT, 2, :GIT_DIFF_STATS_NUMBER, 4, :GIT_DIFF_STATS_INCLUDE_SUMMARY, 8]


  attach_function :git_diff_get_stats, [:pointer, GitDiff.by_ref], :int32

  attach_function :git_diff_stats_files_changed, [:pointer], :uint64

  attach_function :git_diff_stats_insertions, [:pointer], :uint64

  attach_function :git_diff_stats_deletions, [:pointer], :uint64

  attach_function :git_diff_stats_to_buf, [GitBuf.by_ref, :pointer, :git_diff_stats_format_t, :uint64], :int32

  attach_function :git_diff_stats_free, [GitDiffStat.by_ref], :void

  enum :git_diff_format_email_flags_t, [:GIT_DIFF_FORMAT_EMAIL_NONE, 0, :GIT_DIFF_FORMAT_EMAIL_EXCLUDE_SUBJECT_PATCH_MARKER, 1]


  class GitDiffFormatEmailOption < FFI::Struct
    layout :version, :uint32, :flags, :git_diff_format_email_flags_t, :patch_no, :uint64, :total_patches, :uint64, :id, :pointer, :summary, :pointer, :body, :pointer, :author, :pointer
  end


  attach_function :git_diff_format_email, [GitBuf.by_ref, GitDiff.by_ref, :pointer], :int32

  attach_function :git_diff_commit_as_email, [GitBuf.by_ref, GitRepository.by_ref, GitCommit.by_ref, :uint64, :uint64, :git_diff_format_email_flags_t, :pointer], :int32

  attach_function :git_diff_format_email_init_options, [GitDiffFormatEmailOption.by_ref, :uint32], :int32

  class GitDiffPatchidOption < FFI::Struct
    layout :version, :uint32
  end


  attach_function :git_diff_patchid_init_options, [GitDiffPatchidOption.by_ref, :uint32], :int32

  attach_function :git_diff_patchid, [GitOid.by_ref, GitDiff.by_ref, GitDiffPatchidOption.by_ref], :int32

  enum :git_checkout_strategy_t, [:GIT_CHECKOUT_NONE, 0, :GIT_CHECKOUT_SAFE, 1, :GIT_CHECKOUT_FORCE, 2, :GIT_CHECKOUT_RECREATE_MISSING, 4, :GIT_CHECKOUT_ALLOW_CONFLICTS, 16, :GIT_CHECKOUT_REMOVE_UNTRACKED, 32, :GIT_CHECKOUT_REMOVE_IGNORED, 64, :GIT_CHECKOUT_UPDATE_ONLY, 128, :GIT_CHECKOUT_DONT_UPDATE_INDEX, 256, :GIT_CHECKOUT_NO_REFRESH, 512, :GIT_CHECKOUT_SKIP_UNMERGED, 1024, :GIT_CHECKOUT_USE_OURS, 2048, :GIT_CHECKOUT_USE_THEIRS, 4096, :GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH, 8192, :GIT_CHECKOUT_SKIP_LOCKED_DIRECTORIES, 262144, :GIT_CHECKOUT_DONT_OVERWRITE_IGNORED, 524288, :GIT_CHECKOUT_CONFLICT_STYLE_MERGE, 1048576, :GIT_CHECKOUT_CONFLICT_STYLE_DIFF3, 2097152, :GIT_CHECKOUT_DONT_REMOVE_EXISTING, 4194304, :GIT_CHECKOUT_DONT_WRITE_INDEX, 8388608, :GIT_CHECKOUT_UPDATE_SUBMODULES, 65536, :GIT_CHECKOUT_UPDATE_SUBMODULES_IF_CHANGED, 131072]


  enum :git_checkout_notify_t, [:GIT_CHECKOUT_NOTIFY_NONE, 0, :GIT_CHECKOUT_NOTIFY_CONFLICT, 1, :GIT_CHECKOUT_NOTIFY_DIRTY, 2, :GIT_CHECKOUT_NOTIFY_UPDATED, 4, :GIT_CHECKOUT_NOTIFY_UNTRACKED, 8, :GIT_CHECKOUT_NOTIFY_IGNORED, 16, :GIT_CHECKOUT_NOTIFY_ALL, 65535]


  class GitCheckoutPerfdatum < FFI::Struct
    layout :mkdir_calls, :uint64, :stat_calls, :uint64, :chmod_calls, :uint64
  end


  callback :git_checkout_notify_cb, [:git_checkout_notify_t, :pointer, :pointer, :pointer, :pointer, :pointer], :int32

  callback :git_checkout_progress_cb, [:pointer, :uint64, :uint64, :pointer], :void

  callback :git_checkout_perfdata_cb, [:pointer, :pointer], :void

  class GitCheckoutOption < FFI::Struct
    layout :version, :uint32, :checkout_strategy, :uint32, :disable_filters, :int32, :dir_mode, :uint32, :file_mode, :uint32, :file_open_flags, :int32, :notify_flags, :uint32, :notify_cb, :git_checkout_notify_cb, :notify_payload, :pointer, :progress_cb, :git_checkout_progress_cb, :progress_payload, :pointer, :paths, GitStrarray.by_value, :baseline, GitTree.by_ref, :baseline_index, GitIndex.by_ref, :target_directory, :pointer, :ancestor_label, :pointer, :our_label, :pointer, :their_label, :pointer, :perfdata_cb, :git_checkout_perfdata_cb, :perfdata_payload, :pointer
  end


  attach_function :git_checkout_init_options, [GitCheckoutOption.by_ref, :uint32], :int32

  attach_function :git_checkout_head, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_checkout_index, [GitRepository.by_ref, GitIndex.by_ref, :pointer], :int32

  attach_function :git_checkout_tree, [GitRepository.by_ref, :pointer, :pointer], :int32

  class GitOidarray < FFI::Struct
    layout :ids, GitOid.by_ref, :count, :uint64
  end


  attach_function :git_oidarray_free, [GitOidarray.by_ref], :void

  class GitIndexer < FFI::Struct
  end


  attach_function :git_indexer_new, [:pointer, :pointer, :uint32, GitOdb.by_ref, :git_transfer_progress_cb, :pointer], :int32

  attach_function :git_indexer_append, [GitIndexer.by_ref, :pointer, :uint64, GitTransferProgress.by_ref], :int32

  attach_function :git_indexer_commit, [GitIndexer.by_ref, GitTransferProgress.by_ref], :int32

  attach_function :git_indexer_hash, [:pointer], :pointer

  attach_function :git_indexer_free, [GitIndexer.by_ref], :void

  class GitIndexTime < FFI::Struct
    layout :seconds, :int32, :nanoseconds, :uint32
  end


  class GitIndexEntry < FFI::Struct
    layout :ctime, GitIndexTime.by_value, :mtime, GitIndexTime.by_value, :dev, :uint32, :ino, :uint32, :mode, :uint32, :uid, :uint32, :gid, :uint32, :file_size, :uint32, :id, GitOid.by_value, :flags, :uint16, :flags_extended, :uint16, :path, :pointer
  end


  enum :git_indxentry_flag_t, [:GIT_IDXENTRY_EXTENDED, 16384, :GIT_IDXENTRY_VALID, 32768]


  enum :git_idxentry_extended_flag_t, [:GIT_IDXENTRY_INTENT_TO_ADD, 8192, :GIT_IDXENTRY_SKIP_WORKTREE, 16384, :GIT_IDXENTRY_EXTENDED2, 32768, :GIT_IDXENTRY_EXTENDED_FLAGS, 24576, :GIT_IDXENTRY_UPDATE, 1, :GIT_IDXENTRY_REMOVE, 2, :GIT_IDXENTRY_UPTODATE, 4, :GIT_IDXENTRY_ADDED, 8, :GIT_IDXENTRY_HASHED, 16, :GIT_IDXENTRY_UNHASHED, 32, :GIT_IDXENTRY_WT_REMOVE, 64, :GIT_IDXENTRY_CONFLICTED, 128, :GIT_IDXENTRY_UNPACKED, 256, :GIT_IDXENTRY_NEW_SKIP_WORKTREE, 512]


  enum :git_indexcap_t, [:GIT_INDEXCAP_IGNORE_CASE, 1, :GIT_INDEXCAP_NO_FILEMODE, 2, :GIT_INDEXCAP_NO_SYMLINKS, 4, :GIT_INDEXCAP_FROM_OWNER, -1]


  callback :git_index_matched_path_cb, [:pointer, :pointer, :pointer], :int32

  enum :git_index_add_option_t, [:GIT_INDEX_ADD_DEFAULT, 0, :GIT_INDEX_ADD_FORCE, 1, :GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH, 2, :GIT_INDEX_ADD_CHECK_PATHSPEC, 4]


  enum :git_index_stage_t, [:GIT_INDEX_STAGE_ANY, -1, :GIT_INDEX_STAGE_NORMAL, 0, :GIT_INDEX_STAGE_ANCESTOR, 1, :GIT_INDEX_STAGE_OURS, 2, :GIT_INDEX_STAGE_THEIRS, 3]


  attach_function :git_index_open, [:pointer, :pointer], :int32

  attach_function :git_index_new, [:pointer], :int32

  attach_function :git_index_free, [GitIndex.by_ref], :void

  attach_function :git_index_owner, [:pointer], GitRepository.by_ref

  attach_function :git_index_caps, [:pointer], :int32

  attach_function :git_index_set_caps, [GitIndex.by_ref, :int32], :int32

  attach_function :git_index_version, [GitIndex.by_ref], :uint32

  attach_function :git_index_set_version, [GitIndex.by_ref, :uint32], :int32

  attach_function :git_index_read, [GitIndex.by_ref, :int32], :int32

  attach_function :git_index_write, [GitIndex.by_ref], :int32

  attach_function :git_index_path, [:pointer], :pointer

  attach_function :git_index_checksum, [GitIndex.by_ref], :pointer

  attach_function :git_index_read_tree, [GitIndex.by_ref, :pointer], :int32

  attach_function :git_index_write_tree, [GitOid.by_ref, GitIndex.by_ref], :int32

  attach_function :git_index_write_tree_to, [GitOid.by_ref, GitIndex.by_ref, GitRepository.by_ref], :int32

  attach_function :git_index_entrycount, [:pointer], :uint64

  attach_function :git_index_clear, [GitIndex.by_ref], :int32

  attach_function :git_index_get_byindex, [GitIndex.by_ref, :uint64], :pointer

  attach_function :git_index_get_bypath, [GitIndex.by_ref, :pointer, :int32], :pointer

  attach_function :git_index_remove, [GitIndex.by_ref, :pointer, :int32], :int32

  attach_function :git_index_remove_directory, [GitIndex.by_ref, :pointer, :int32], :int32

  attach_function :git_index_add, [GitIndex.by_ref, :pointer], :int32

  attach_function :git_index_entry_stage, [:pointer], :int32

  attach_function :git_index_entry_is_conflict, [:pointer], :int32

  attach_function :git_index_add_bypath, [GitIndex.by_ref, :pointer], :int32

  attach_function :git_index_add_frombuffer, [GitIndex.by_ref, :pointer, :pointer, :uint64], :int32

  attach_function :git_index_remove_bypath, [GitIndex.by_ref, :pointer], :int32

  attach_function :git_index_add_all, [GitIndex.by_ref, :pointer, :uint32, :git_index_matched_path_cb, :pointer], :int32

  attach_function :git_index_remove_all, [GitIndex.by_ref, :pointer, :git_index_matched_path_cb, :pointer], :int32

  attach_function :git_index_update_all, [GitIndex.by_ref, :pointer, :git_index_matched_path_cb, :pointer], :int32

  attach_function :git_index_find, [:pointer, GitIndex.by_ref, :pointer], :int32

  attach_function :git_index_find_prefix, [:pointer, GitIndex.by_ref, :pointer], :int32

  attach_function :git_index_conflict_add, [GitIndex.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_index_conflict_get, [:pointer, :pointer, :pointer, GitIndex.by_ref, :pointer], :int32

  attach_function :git_index_conflict_remove, [GitIndex.by_ref, :pointer], :int32

  attach_function :git_index_conflict_cleanup, [GitIndex.by_ref], :int32

  attach_function :git_index_has_conflicts, [:pointer], :int32

  attach_function :git_index_conflict_iterator_new, [:pointer, GitIndex.by_ref], :int32

  attach_function :git_index_conflict_next, [:pointer, :pointer, :pointer, GitIndexConflictIterator.by_ref], :int32

  attach_function :git_index_conflict_iterator_free, [GitIndexConflictIterator.by_ref], :void

  class GitMergeFileInput < FFI::Struct
    layout :version, :uint32, :ptr, :pointer, :size, :uint64, :path, :pointer, :mode, :uint32
  end


  attach_function :git_merge_file_init_input, [GitMergeFileInput.by_ref, :uint32], :int32

  enum :git_merge_flag_t, [:GIT_MERGE_FIND_RENAMES, 1, :GIT_MERGE_FAIL_ON_CONFLICT, 2, :GIT_MERGE_SKIP_REUC, 4, :GIT_MERGE_NO_RECURSIVE, 8]


  enum :git_merge_file_favor_t, [:GIT_MERGE_FILE_FAVOR_NORMAL, 0, :GIT_MERGE_FILE_FAVOR_OURS, 1, :GIT_MERGE_FILE_FAVOR_THEIRS, 2, :GIT_MERGE_FILE_FAVOR_UNION, 3]


  enum :git_merge_file_flag_t, [:GIT_MERGE_FILE_DEFAULT, 0, :GIT_MERGE_FILE_STYLE_MERGE, 1, :GIT_MERGE_FILE_STYLE_DIFF3, 2, :GIT_MERGE_FILE_SIMPLIFY_ALNUM, 4, :GIT_MERGE_FILE_IGNORE_WHITESPACE, 8, :GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE, 16, :GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL, 32, :GIT_MERGE_FILE_DIFF_PATIENCE, 64, :GIT_MERGE_FILE_DIFF_MINIMAL, 128]


  class GitMergeFileOption < FFI::Struct
    layout :version, :uint32, :ancestor_label, :pointer, :our_label, :pointer, :their_label, :pointer, :favor, :git_merge_file_favor_t, :flags, :git_merge_file_flag_t, :marker_size, :uint16
  end


  attach_function :git_merge_file_init_options, [GitMergeFileOption.by_ref, :uint32], :int32

  class GitMergeFileResult < FFI::Struct
    layout :automergeable, :uint32, :path, :pointer, :mode, :uint32, :ptr, :pointer, :len, :uint64
  end


  class GitMergeOption < FFI::Struct
    layout :version, :uint32, :flags, :git_merge_flag_t, :rename_threshold, :uint32, :target_limit, :uint32, :metric, GitDiffSimilarityMetric.by_ref, :recursion_limit, :uint32, :default_driver, :pointer, :file_favor, :git_merge_file_favor_t, :file_flags, :git_merge_file_flag_t
  end


  attach_function :git_merge_init_options, [GitMergeOption.by_ref, :uint32], :int32

  enum :git_merge_analysis_t, [:GIT_MERGE_ANALYSIS_NONE, 0, :GIT_MERGE_ANALYSIS_NORMAL, 1, :GIT_MERGE_ANALYSIS_UP_TO_DATE, 2, :GIT_MERGE_ANALYSIS_FASTFORWARD, 4, :GIT_MERGE_ANALYSIS_UNBORN, 8]


  enum :git_merge_preference_t, [:GIT_MERGE_PREFERENCE_NONE, 0, :GIT_MERGE_PREFERENCE_NO_FASTFORWARD, 1, :GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY, 2]


  attach_function :git_merge_analysis, [:pointer, :pointer, GitRepository.by_ref, :pointer, :uint64], :int32

  attach_function :git_merge_base, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_merge_bases, [GitOidarray.by_ref, GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_merge_base_many, [GitOid.by_ref, GitRepository.by_ref, :uint64, :pointer], :int32

  attach_function :git_merge_bases_many, [GitOidarray.by_ref, GitRepository.by_ref, :uint64, :pointer], :int32

  attach_function :git_merge_base_octopus, [GitOid.by_ref, GitRepository.by_ref, :uint64, :pointer], :int32

  attach_function :git_merge_file, [GitMergeFileResult.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_merge_file_from_index, [GitMergeFileResult.by_ref, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_merge_file_result_free, [GitMergeFileResult.by_ref], :void

  attach_function :git_merge_trees, [:pointer, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_merge_commits, [:pointer, GitRepository.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_merge, [GitRepository.by_ref, :pointer, :uint64, :pointer, :pointer], :int32

  class GitCherrypickOption < FFI::Struct
    layout :version, :uint32, :mainline, :uint32, :merge_opts, GitMergeOption.by_value, :checkout_opts, GitCheckoutOption.by_value
  end


  attach_function :git_cherrypick_init_options, [GitCherrypickOption.by_ref, :uint32], :int32

  attach_function :git_cherrypick_commit, [:pointer, GitRepository.by_ref, GitCommit.by_ref, GitCommit.by_ref, :uint32, :pointer], :int32

  attach_function :git_cherrypick, [GitRepository.by_ref, GitCommit.by_ref, :pointer], :int32

  enum :git_direction, [:GIT_DIRECTION_FETCH, 0, :GIT_DIRECTION_PUSH, 1]


  class GitRemoteHead < FFI::Struct
    layout :local, :int32, :oid, GitOid.by_value, :loid, GitOid.by_value, :name, :pointer, :symref_target, :pointer
  end

  callback :git_headlist_cb, [GitRemoteHead.by_ref, :pointer], :int32

  attach_function :git_refspec_src, [:pointer], :pointer

  attach_function :git_refspec_dst, [:pointer], :pointer

  attach_function :git_refspec_string, [:pointer], :pointer

  attach_function :git_refspec_force, [:pointer], :int32

  attach_function :git_refspec_direction, [:pointer], :git_direction

  attach_function :git_refspec_src_matches, [:pointer, :pointer], :int32

  attach_function :git_refspec_dst_matches, [:pointer, :pointer], :int32

  attach_function :git_refspec_transform, [GitBuf.by_ref, :pointer, :pointer], :int32

  attach_function :git_refspec_rtransform, [GitBuf.by_ref, :pointer, :pointer], :int32

  callback :git_transport_cb, [:pointer, GitRemote.by_ref, :pointer], :int32

  enum :git_cert_ssh_t, [:GIT_CERT_SSH_MD5, 1, :GIT_CERT_SSH_SHA1, 2]


  class GitCertHostkey < FFI::Struct
    layout :parent, GitCert.by_value, :type, :git_cert_ssh_t, :hash_md5, [:uint8, 16], :hash_sha1, [:uint8, 20]
  end


  class GitCertX509 < FFI::Struct
    layout :parent, GitCert.by_value, :data, :pointer, :len, :uint64
  end


  enum :git_credtype_t, [:GIT_CREDTYPE_USERPASS_PLAINTEXT, 1, :GIT_CREDTYPE_SSH_KEY, 2, :GIT_CREDTYPE_SSH_CUSTOM, 4, :GIT_CREDTYPE_DEFAULT, 8, :GIT_CREDTYPE_SSH_INTERACTIVE, 16, :GIT_CREDTYPE_USERNAME, 32, :GIT_CREDTYPE_SSH_MEMORY, 64]


  class GitCred < FFI::Struct
  end


  class GitCred < FFI::Struct
    layout :credtype, :git_credtype_t, :free, callback([GitCred.by_ref], :void)
  end

  class GitCredUserpassPlaintext < FFI::Struct
    layout :parent, GitCred.by_value, :username, :pointer, :password, :pointer
  end


  class Libssh2Session < FFI::Struct
  end


  class Libssh2UserauthKbdintPrompt < FFI::Struct
  end


  class Libssh2UserauthKbdintResponse < FFI::Struct
  end


  callback :git_cred_sign_callback, [:pointer, :pointer, :pointer, :pointer, :uint64, :pointer], :int32

  callback :git_cred_ssh_interactive_callback, [:pointer, :int32, :pointer, :int32, :int32, :pointer, :pointer, :pointer], :void

  class GitCredSshKey < FFI::Struct
    layout :parent, GitCred.by_value, :username, :pointer, :publickey, :pointer, :privatekey, :pointer, :passphrase, :pointer
  end


  class GitCredSshInteractive < FFI::Struct
    layout :parent, GitCred.by_value, :username, :pointer, :prompt_callback, :git_cred_ssh_interactive_callback, :payload, :pointer
  end


  class GitCredSshCustom < FFI::Struct
    layout :parent, GitCred.by_value, :username, :pointer, :publickey, :pointer, :publickey_len, :uint64, :sign_callback, :git_cred_sign_callback, :payload, :pointer
  end



  class GitCredUsername < FFI::Struct
    layout :parent, GitCred.by_value, :username, [:int8, 1]
  end


  attach_function :git_cred_has_username, [GitCred.by_ref], :int32

  attach_function :git_cred_userpass_plaintext_new, [:pointer, :pointer, :pointer], :int32

  attach_function :git_cred_ssh_key_new, [:pointer, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_cred_ssh_interactive_new, [:pointer, :pointer, :git_cred_ssh_interactive_callback, :pointer], :int32

  attach_function :git_cred_ssh_key_from_agent, [:pointer, :pointer], :int32

  attach_function :git_cred_ssh_custom_new, [:pointer, :pointer, :pointer, :uint64, :git_cred_sign_callback, :pointer], :int32

  attach_function :git_cred_default_new, [:pointer], :int32

  attach_function :git_cred_username_new, [:pointer, :pointer], :int32

  attach_function :git_cred_ssh_key_memory_new, [:pointer, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_cred_free, [GitCred.by_ref], :void

  callback :git_cred_acquire_cb, [:pointer, :pointer, :pointer, :uint32, :pointer], :int32

  enum :git_packbuilder_stage_t, [:GIT_PACKBUILDER_ADDING_OBJECTS, 0, :GIT_PACKBUILDER_DELTAFICATION, 1]


  attach_function :git_packbuilder_new, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_packbuilder_set_threads, [GitPackbuilder.by_ref, :uint32], :uint32

  attach_function :git_packbuilder_insert, [GitPackbuilder.by_ref, :pointer, :pointer], :int32

  attach_function :git_packbuilder_insert_tree, [GitPackbuilder.by_ref, :pointer], :int32

  attach_function :git_packbuilder_insert_commit, [GitPackbuilder.by_ref, :pointer], :int32

  attach_function :git_packbuilder_insert_walk, [GitPackbuilder.by_ref, GitRevwalk.by_ref], :int32

  attach_function :git_packbuilder_insert_recur, [GitPackbuilder.by_ref, :pointer, :pointer], :int32

  attach_function :git_packbuilder_write_buf, [GitBuf.by_ref, GitPackbuilder.by_ref], :int32

  attach_function :git_packbuilder_write, [GitPackbuilder.by_ref, :pointer, :uint32, :git_transfer_progress_cb, :pointer], :int32

  attach_function :git_packbuilder_hash, [GitPackbuilder.by_ref], :pointer

  callback :git_packbuilder_foreach_cb, [:pointer, :uint64, :pointer], :int32

  attach_function :git_packbuilder_foreach, [GitPackbuilder.by_ref, :git_packbuilder_foreach_cb, :pointer], :int32

  attach_function :git_packbuilder_object_count, [GitPackbuilder.by_ref], :uint64

  attach_function :git_packbuilder_written, [GitPackbuilder.by_ref], :uint64

  callback :git_packbuilder_progress, [:int32, :uint32, :uint32, :pointer], :int32

  attach_function :git_packbuilder_set_callbacks, [GitPackbuilder.by_ref, :git_packbuilder_progress, :pointer], :int32

  attach_function :git_packbuilder_free, [GitPackbuilder.by_ref], :void

  enum :git_proxy_t, [:GIT_PROXY_NONE, 0, :GIT_PROXY_AUTO, 1, :GIT_PROXY_SPECIFIED, 2]


  class GitProxyOption < FFI::Struct
    layout :version, :uint32, :type, :git_proxy_t, :url, :pointer, :credentials, :git_cred_acquire_cb, :certificate_check, :git_transport_certificate_check_cb, :payload, :pointer
  end


  attach_function :git_proxy_init_options, [GitProxyOption.by_ref, :uint32], :int32

  attach_function :git_remote_create, [:pointer, GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_create_with_fetchspec, [:pointer, GitRepository.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_remote_create_anonymous, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_remote_create_detached, [:pointer, :pointer], :int32

  attach_function :git_remote_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_remote_dup, [:pointer, GitRemote.by_ref], :int32

  attach_function :git_remote_owner, [:pointer], GitRepository.by_ref

  attach_function :git_remote_name, [:pointer], :pointer

  attach_function :git_remote_url, [:pointer], :pointer

  attach_function :git_remote_pushurl, [:pointer], :pointer

  attach_function :git_remote_set_url, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_set_pushurl, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_add_fetch, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_get_fetch_refspecs, [GitStrarray.by_ref, :pointer], :int32

  attach_function :git_remote_add_push, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_get_push_refspecs, [GitStrarray.by_ref, :pointer], :int32

  attach_function :git_remote_refspec_count, [:pointer], :uint64

  attach_function :git_remote_get_refspec, [:pointer, :uint64], :pointer

  attach_function :git_remote_connect, [GitRemote.by_ref, :git_direction, :pointer, :pointer, :pointer], :int32

  attach_function :git_remote_ls, [:pointer, :pointer, GitRemote.by_ref], :int32

  attach_function :git_remote_connected, [:pointer], :int32

  attach_function :git_remote_stop, [GitRemote.by_ref], :void

  attach_function :git_remote_disconnect, [GitRemote.by_ref], :void

  attach_function :git_remote_free, [GitRemote.by_ref], :void

  attach_function :git_remote_list, [GitStrarray.by_ref, GitRepository.by_ref], :int32

  enum :git_remote_completion_type, [:GIT_REMOTE_COMPLETION_DOWNLOAD, 0, :GIT_REMOTE_COMPLETION_INDEXING, 1, :GIT_REMOTE_COMPLETION_ERROR, 2]


  callback :git_push_transfer_progress, [:uint32, :uint32, :uint64, :pointer], :int32

  class GitPushUpdate < FFI::Struct
    layout :src_refname, :pointer, :dst_refname, :pointer, :src, GitOid.by_value, :dst, GitOid.by_value
  end


  callback :git_push_negotiation, [:pointer, :uint64, :pointer], :int32

  callback :git_push_update_reference_cb, [:pointer, :pointer, :pointer], :int32

  class GitRemoteCallback < FFI::Struct
    layout :version, :uint32, :sideband_progress, :git_transport_message_cb, :completion, callback([:git_remote_completion_type, :pointer], :int32), :credentials, :git_cred_acquire_cb, :certificate_check, :git_transport_certificate_check_cb, :transfer_progress, :git_transfer_progress_cb, :update_tips, callback([:pointer, :pointer, :pointer, :pointer], :int32), :pack_progress, :git_packbuilder_progress, :push_transfer_progress, :git_push_transfer_progress, :push_update_reference, :git_push_update_reference_cb, :push_negotiation, :git_push_negotiation, :transport, :git_transport_cb, :payload, :pointer
  end

  attach_function :git_remote_init_callbacks, [GitRemoteCallback.by_ref, :uint32], :int32

  enum :git_fetch_prune_t, [:GIT_FETCH_PRUNE_UNSPECIFIED, 0, :GIT_FETCH_PRUNE, 1, :GIT_FETCH_NO_PRUNE, 2]


  enum :git_remote_autotag_option_t, [:GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED, 0, :GIT_REMOTE_DOWNLOAD_TAGS_AUTO, 1, :GIT_REMOTE_DOWNLOAD_TAGS_NONE, 2, :GIT_REMOTE_DOWNLOAD_TAGS_ALL, 3]


  class GitFetchOption < FFI::Struct
    layout :version, :int32, :callbacks, GitRemoteCallback.by_value, :prune, :git_fetch_prune_t, :update_fetchhead, :int32, :download_tags, :git_remote_autotag_option_t, :proxy_opts, GitProxyOption.by_value, :custom_headers, GitStrarray.by_value
  end


  attach_function :git_fetch_init_options, [GitFetchOption.by_ref, :uint32], :int32

  class GitPushOption < FFI::Struct
    layout :version, :uint32, :pb_parallelism, :uint32, :callbacks, GitRemoteCallback.by_value, :proxy_opts, GitProxyOption.by_value, :custom_headers, GitStrarray.by_value
  end


  attach_function :git_push_init_options, [GitPushOption.by_ref, :uint32], :int32

  attach_function :git_remote_download, [GitRemote.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_upload, [GitRemote.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_update_tips, [GitRemote.by_ref, :pointer, :int32, :git_remote_autotag_option_t, :pointer], :int32

  attach_function :git_remote_fetch, [GitRemote.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_remote_prune, [GitRemote.by_ref, :pointer], :int32

  attach_function :git_remote_push, [GitRemote.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_stats, [GitRemote.by_ref], :pointer

  attach_function :git_remote_autotag, [:pointer], :git_remote_autotag_option_t

  attach_function :git_remote_set_autotag, [GitRepository.by_ref, :pointer, :git_remote_autotag_option_t], :int32

  attach_function :git_remote_prune_refs, [:pointer], :int32

  attach_function :git_remote_rename, [GitStrarray.by_ref, GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_remote_is_valid_name, [:pointer], :int32

  attach_function :git_remote_delete, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_remote_default_branch, [GitBuf.by_ref, GitRemote.by_ref], :int32

  enum :git_clone_local_t, [:GIT_CLONE_LOCAL_AUTO, 0, :GIT_CLONE_LOCAL, 1, :GIT_CLONE_NO_LOCAL, 2, :GIT_CLONE_LOCAL_NO_LINKS, 3]


  callback :git_remote_create_cb, [:pointer, GitRepository.by_ref, :pointer, :pointer, :pointer], :int32

  callback :git_repository_create_cb, [:pointer, :pointer, :int32, :pointer], :int32

  class GitCloneOption < FFI::Struct
    layout :version, :uint32, :checkout_opts, GitCheckoutOption.by_value, :fetch_opts, GitFetchOption.by_value, :bare, :int32, :local, :git_clone_local_t, :checkout_branch, :pointer, :repository_cb, :git_repository_create_cb, :repository_cb_payload, :pointer, :remote_cb, :git_remote_create_cb, :remote_cb_payload, :pointer
  end


  attach_function :git_clone_init_options, [GitCloneOption.by_ref, :uint32], :int32

  attach_function :git_clone, [:pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_commit_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_commit_lookup_prefix, [:pointer, GitRepository.by_ref, :pointer, :uint64], :int32

  attach_function :git_commit_free, [GitCommit.by_ref], :void

  attach_function :git_commit_id, [:pointer], :pointer

  attach_function :git_commit_owner, [:pointer], GitRepository.by_ref

  attach_function :git_commit_message_encoding, [:pointer], :pointer

  attach_function :git_commit_message, [:pointer], :pointer

  attach_function :git_commit_message_raw, [:pointer], :pointer

  attach_function :git_commit_summary, [GitCommit.by_ref], :pointer

  attach_function :git_commit_body, [GitCommit.by_ref], :pointer

  attach_function :git_commit_time, [:pointer], :git_time_t

  attach_function :git_commit_time_offset, [:pointer], :int32

  attach_function :git_commit_committer, [:pointer], :pointer

  attach_function :git_commit_author, [:pointer], :pointer

  attach_function :git_commit_raw_header, [:pointer], :pointer

  attach_function :git_commit_tree, [:pointer, :pointer], :int32

  attach_function :git_commit_tree_id, [:pointer], :pointer

  attach_function :git_commit_parentcount, [:pointer], :uint32

  attach_function :git_commit_parent, [:pointer, :pointer, :uint32], :int32

  attach_function :git_commit_parent_id, [:pointer, :uint32], :pointer

  attach_function :git_commit_nth_gen_ancestor, [:pointer, :pointer, :uint32], :int32

  attach_function :git_commit_header_field, [GitBuf.by_ref, :pointer, :pointer], :int32

  attach_function :git_commit_extract_signature, [GitBuf.by_ref, GitBuf.by_ref, GitRepository.by_ref, GitOid.by_ref, :pointer], :int32

  attach_function :git_commit_create, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :uint64, :pointer], :int32

  attach_function :git_commit_create_v, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :uint64], :int32

  attach_function :git_commit_amend, [GitOid.by_ref, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_commit_create_buffer, [GitBuf.by_ref, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer, :pointer, :uint64, :pointer], :int32

  attach_function :git_commit_create_with_signature, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_commit_dup, [:pointer, GitCommit.by_ref], :int32

  enum :git_config_level_t, [:GIT_CONFIG_LEVEL_PROGRAMDATA, 1, :GIT_CONFIG_LEVEL_SYSTEM, 2, :GIT_CONFIG_LEVEL_XDG, 3, :GIT_CONFIG_LEVEL_GLOBAL, 4, :GIT_CONFIG_LEVEL_LOCAL, 5, :GIT_CONFIG_LEVEL_APP, 6, :GIT_CONFIG_HIGHEST_LEVEL, -1]


  class GitConfigEntry < FFI::Struct
    layout :name, :pointer, :value, :pointer, :level, :git_config_level_t, :free, callback([GitConfigEntry.by_ref], :void), :payload, :pointer
  end


  attach_function :git_config_entry_free, [GitConfigEntry.by_ref], :void

  callback :git_config_foreach_cb, [:pointer, :pointer], :int32

  class GitConfigIterator < FFI::Struct
  end


  enum :git_cvar_t, [:GIT_CVAR_FALSE, 0, :GIT_CVAR_TRUE, 1, :GIT_CVAR_INT32, 2, :GIT_CVAR_STRING, 3]


  class GitCvarMap < FFI::Struct
    layout :cvar_type, :git_cvar_t, :str_match, :pointer, :map_value, :int32
  end


  attach_function :git_config_find_global, [GitBuf.by_ref], :int32

  attach_function :git_config_find_xdg, [GitBuf.by_ref], :int32

  attach_function :git_config_find_system, [GitBuf.by_ref], :int32

  attach_function :git_config_find_programdata, [GitBuf.by_ref], :int32

  attach_function :git_config_open_default, [:pointer], :int32

  attach_function :git_config_new, [:pointer], :int32

  attach_function :git_config_add_file_ondisk, [GitConfig.by_ref, :pointer, :git_config_level_t, :pointer, :int32], :int32

  attach_function :git_config_open_ondisk, [:pointer, :pointer], :int32

  attach_function :git_config_open_level, [:pointer, :pointer, :git_config_level_t], :int32

  attach_function :git_config_open_global, [:pointer, GitConfig.by_ref], :int32

  attach_function :git_config_snapshot, [:pointer, GitConfig.by_ref], :int32

  attach_function :git_config_free, [GitConfig.by_ref], :void

  attach_function :git_config_get_entry, [:pointer, :pointer, :pointer], :int32

  attach_function :git_config_get_int32, [:pointer, :pointer, :pointer], :int32

  attach_function :git_config_get_int64, [:pointer, :pointer, :pointer], :int32

  attach_function :git_config_get_bool, [:pointer, :pointer, :pointer], :int32

  attach_function :git_config_get_path, [GitBuf.by_ref, :pointer, :pointer], :int32

  attach_function :git_config_get_string, [:pointer, :pointer, :pointer], :int32

  attach_function :git_config_get_string_buf, [GitBuf.by_ref, :pointer, :pointer], :int32

  attach_function :git_config_get_multivar_foreach, [:pointer, :pointer, :pointer, :git_config_foreach_cb, :pointer], :int32

  attach_function :git_config_multivar_iterator_new, [:pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_config_next, [:pointer, GitConfigIterator.by_ref], :int32

  attach_function :git_config_iterator_free, [GitConfigIterator.by_ref], :void

  attach_function :git_config_set_int32, [GitConfig.by_ref, :pointer, :int32], :int32

  attach_function :git_config_set_int64, [GitConfig.by_ref, :pointer, :int64], :int32

  attach_function :git_config_set_bool, [GitConfig.by_ref, :pointer, :int32], :int32

  attach_function :git_config_set_string, [GitConfig.by_ref, :pointer, :pointer], :int32

  attach_function :git_config_set_multivar, [GitConfig.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_config_delete_entry, [GitConfig.by_ref, :pointer], :int32

  attach_function :git_config_delete_multivar, [GitConfig.by_ref, :pointer, :pointer], :int32

  attach_function :git_config_foreach, [:pointer, :git_config_foreach_cb, :pointer], :int32

  attach_function :git_config_iterator_new, [:pointer, :pointer], :int32

  attach_function :git_config_iterator_glob_new, [:pointer, :pointer, :pointer], :int32

  attach_function :git_config_foreach_match, [:pointer, :pointer, :git_config_foreach_cb, :pointer], :int32

  attach_function :git_config_get_mapped, [:pointer, :pointer, :pointer, :pointer, :uint64], :int32

  attach_function :git_config_lookup_map_value, [:pointer, :pointer, :uint64, :pointer], :int32

  attach_function :git_config_parse_bool, [:pointer, :pointer], :int32

  attach_function :git_config_parse_int32, [:pointer, :pointer], :int32

  attach_function :git_config_parse_int64, [:pointer, :pointer], :int32

  attach_function :git_config_parse_path, [GitBuf.by_ref, :pointer], :int32

  attach_function :git_config_backend_foreach_match, [GitConfigBackend.by_ref, :pointer, :git_config_foreach_cb, :pointer], :int32

  attach_function :git_config_lock, [:pointer, GitConfig.by_ref], :int32

  enum :git_describe_strategy_t, [:GIT_DESCRIBE_DEFAULT, 0, :GIT_DESCRIBE_TAGS, 1, :GIT_DESCRIBE_ALL, 2]


  class GitDescribeOption < FFI::Struct
    layout :version, :uint32, :max_candidates_tags, :uint32, :describe_strategy, :uint32, :pattern, :pointer, :only_follow_first_parent, :int32, :show_commit_oid_as_fallback, :int32
  end


  attach_function :git_describe_init_options, [GitDescribeOption.by_ref, :uint32], :int32

  class GitDescribeFormatOption < FFI::Struct
    layout :version, :uint32, :abbreviated_size, :uint32, :always_use_long_format, :int32, :dirty_suffix, :pointer
  end


  attach_function :git_describe_init_format_options, [GitDescribeFormatOption.by_ref, :uint32], :int32

  class GitDescribeResult < FFI::Struct
  end


  attach_function :git_describe_commit, [:pointer, GitObject.by_ref, GitDescribeOption.by_ref], :int32

  attach_function :git_describe_workdir, [:pointer, GitRepository.by_ref, GitDescribeOption.by_ref], :int32

  attach_function :git_describe_format, [GitBuf.by_ref, :pointer, :pointer], :int32

  attach_function :git_describe_result_free, [GitDescribeResult.by_ref], :void

  enum :git_error_code, [:GIT_OK, 0, :GIT_ERROR, -1, :GIT_ENOTFOUND, -3, :GIT_EEXISTS, -4, :GIT_EAMBIGUOUS, -5, :GIT_EBUFS, -6, :GIT_EUSER, -7, :GIT_EBAREREPO, -8, :GIT_EUNBORNBRANCH, -9, :GIT_EUNMERGED, -10, :GIT_ENONFASTFORWARD, -11, :GIT_EINVALIDSPEC, -12, :GIT_ECONFLICT, -13, :GIT_ELOCKED, -14, :GIT_EMODIFIED, -15, :GIT_EAUTH, -16, :GIT_ECERTIFICATE, -17, :GIT_EAPPLIED, -18, :GIT_EPEEL, -19, :GIT_EEOF, -20, :GIT_EINVALID, -21, :GIT_EUNCOMMITTED, -22, :GIT_EDIRECTORY, -23, :GIT_EMERGECONFLICT, -24, :GIT_PASSTHROUGH, -30, :GIT_ITEROVER, -31, :GIT_RETRY, -32, :GIT_EMISMATCH, -33]


  class GitError < FFI::Struct
    layout :message, :pointer, :klass, :int32
  end


  enum :git_error_t, [:GITERR_NONE, 0, :GITERR_NOMEMORY, 1, :GITERR_OS, 2, :GITERR_INVALID, 3, :GITERR_REFERENCE, 4, :GITERR_ZLIB, 5, :GITERR_REPOSITORY, 6, :GITERR_CONFIG, 7, :GITERR_REGEX, 8, :GITERR_ODB, 9, :GITERR_INDEX, 10, :GITERR_OBJECT, 11, :GITERR_NET, 12, :GITERR_TAG, 13, :GITERR_TREE, 14, :GITERR_INDEXER, 15, :GITERR_SSL, 16, :GITERR_SUBMODULE, 17, :GITERR_THREAD, 18, :GITERR_STASH, 19, :GITERR_CHECKOUT, 20, :GITERR_FETCHHEAD, 21, :GITERR_MERGE, 22, :GITERR_SSH, 23, :GITERR_FILTER, 24, :GITERR_REVERT, 25, :GITERR_CALLBACK, 26, :GITERR_CHERRYPICK, 27, :GITERR_DESCRIBE, 28, :GITERR_REBASE, 29, :GITERR_FILESYSTEM, 30, :GITERR_PATCH, 31, :GITERR_WORKTREE, 32, :GITERR_SHA1, 33]


  attach_function :giterr_last, [], :pointer

  attach_function :giterr_clear, [], :void

  attach_function :giterr_set_str, [:int32, :pointer], :void

  attach_function :giterr_set_oom, [], :void

  enum :git_filter_mode_t, [:GIT_FILTER_TO_WORKTREE, 0, :GIT_FILTER_SMUDGE, 0, :GIT_FILTER_TO_ODB, 1, :GIT_FILTER_CLEAN, 1]


  enum :git_filter_flag_t, [:GIT_FILTER_DEFAULT, 0, :GIT_FILTER_ALLOW_UNSAFE, 1]


  class GitFilter < FFI::Struct
  end


  class GitFilterList < FFI::Struct
  end


  attach_function :git_filter_list_load, [:pointer, GitRepository.by_ref, GitBlob.by_ref, :pointer, :git_filter_mode_t, :uint32], :int32

  attach_function :git_filter_list_contains, [GitFilterList.by_ref, :pointer], :int32

  attach_function :git_filter_list_apply_to_data, [GitBuf.by_ref, GitFilterList.by_ref, GitBuf.by_ref], :int32

  attach_function :git_filter_list_apply_to_file, [GitBuf.by_ref, GitFilterList.by_ref, GitRepository.by_ref, :pointer], :int32

  attach_function :git_filter_list_apply_to_blob, [GitBuf.by_ref, GitFilterList.by_ref, GitBlob.by_ref], :int32

  attach_function :git_filter_list_stream_data, [GitFilterList.by_ref, GitBuf.by_ref, GitWritestream.by_ref], :int32

  attach_function :git_filter_list_stream_file, [GitFilterList.by_ref, GitRepository.by_ref, :pointer, GitWritestream.by_ref], :int32

  attach_function :git_filter_list_stream_blob, [GitFilterList.by_ref, GitBlob.by_ref, GitWritestream.by_ref], :int32

  attach_function :git_filter_list_free, [GitFilterList.by_ref], :void

  attach_function :git_libgit2_init, [], :int32

  attach_function :git_libgit2_shutdown, [], :int32

  attach_function :git_graph_ahead_behind, [:pointer, :pointer, GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_graph_descendant_of, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_ignore_add_rule, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_ignore_clear_internal_rules, [GitRepository.by_ref], :int32

  attach_function :git_ignore_path_is_ignored, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_message_prettify, [GitBuf.by_ref, :pointer, :int32, :int8], :int32

  class GitMessageTrailer < FFI::Struct
    layout :key, :pointer, :value, :pointer
  end


  class GitMessageTrailerArray < FFI::Struct
    layout :trailers, GitMessageTrailer.by_ref, :count, :uint64, :_trailer_block, :pointer
  end


  attach_function :git_message_trailers, [GitMessageTrailerArray.by_ref, :pointer], :int32

  attach_function :git_message_trailer_array_free, [GitMessageTrailerArray.by_ref], :void

  callback :git_note_foreach_cb, [:pointer, :pointer, :pointer], :int32

  class GitIterator < FFI::Struct
  end


  attach_function :git_note_iterator_new, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_note_commit_iterator_new, [:pointer, GitCommit.by_ref], :int32

  attach_function :git_note_iterator_free, [:pointer], :void

  attach_function :git_note_next, [GitOid.by_ref, GitOid.by_ref, :pointer], :int32

  attach_function :git_note_read, [:pointer, GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_note_commit_read, [:pointer, GitRepository.by_ref, GitCommit.by_ref, :pointer], :int32

  attach_function :git_note_author, [:pointer], :pointer

  attach_function :git_note_committer, [:pointer], :pointer

  attach_function :git_note_message, [:pointer], :pointer

  attach_function :git_note_id, [:pointer], :pointer

  attach_function :git_note_create, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer, :pointer, :int32], :int32

  attach_function :git_note_commit_create, [GitOid.by_ref, GitOid.by_ref, GitRepository.by_ref, GitCommit.by_ref, :pointer, :pointer, :pointer, :pointer, :int32], :int32

  attach_function :git_note_remove, [GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_note_commit_remove, [GitOid.by_ref, GitRepository.by_ref, GitCommit.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_note_free, [GitNote.by_ref], :void

  attach_function :git_note_default_ref, [GitBuf.by_ref, GitRepository.by_ref], :int32

  attach_function :git_note_foreach, [GitRepository.by_ref, :pointer, :git_note_foreach_cb, :pointer], :int32

  callback :git_odb_foreach_cb, [:pointer, :pointer], :int32

  attach_function :git_odb_new, [:pointer], :int32

  attach_function :git_odb_open, [:pointer, :pointer], :int32

  attach_function :git_odb_add_disk_alternate, [GitOdb.by_ref, :pointer], :int32

  attach_function :git_odb_free, [GitOdb.by_ref], :void

  attach_function :git_odb_read, [:pointer, GitOdb.by_ref, :pointer], :int32

  attach_function :git_odb_read_prefix, [:pointer, GitOdb.by_ref, :pointer, :uint64], :int32

  attach_function :git_odb_read_header, [:pointer, :pointer, GitOdb.by_ref, :pointer], :int32

  attach_function :git_odb_exists, [GitOdb.by_ref, :pointer], :int32

  attach_function :git_odb_exists_prefix, [GitOid.by_ref, GitOdb.by_ref, :pointer, :uint64], :int32

  class GitOdbExpandId < FFI::Struct
    layout :id, GitOid.by_value, :length, :uint16, :type, :git_otype
  end


  attach_function :git_odb_expand_ids, [GitOdb.by_ref, GitOdbExpandId.by_ref, :uint64], :int32

  attach_function :git_odb_refresh, [GitOdb.by_ref], :int32

  attach_function :git_odb_foreach, [GitOdb.by_ref, :git_odb_foreach_cb, :pointer], :int32

  attach_function :git_odb_write, [GitOid.by_ref, GitOdb.by_ref, :pointer, :uint64, :git_otype], :int32

  attach_function :git_odb_open_wstream, [:pointer, GitOdb.by_ref, :git_off_t, :git_otype], :int32

  attach_function :git_odb_stream_write, [GitOdbStream.by_ref, :pointer, :uint64], :int32

  attach_function :git_odb_stream_finalize_write, [GitOid.by_ref, GitOdbStream.by_ref], :int32

  attach_function :git_odb_stream_read, [GitOdbStream.by_ref, :pointer, :uint64], :int32

  attach_function :git_odb_stream_free, [GitOdbStream.by_ref], :void

  attach_function :git_odb_open_rstream, [:pointer, :pointer, :pointer, GitOdb.by_ref, :pointer], :int32

  attach_function :git_odb_write_pack, [:pointer, GitOdb.by_ref, :git_transfer_progress_cb, :pointer], :int32

  attach_function :git_odb_hash, [GitOid.by_ref, :pointer, :uint64, :git_otype], :int32

  attach_function :git_odb_hashfile, [GitOid.by_ref, :pointer, :git_otype], :int32

  attach_function :git_odb_object_dup, [:pointer, GitOdbObject.by_ref], :int32

  attach_function :git_odb_object_free, [GitOdbObject.by_ref], :void

  attach_function :git_odb_object_id, [GitOdbObject.by_ref], :pointer

  attach_function :git_odb_object_data, [GitOdbObject.by_ref], :pointer

  attach_function :git_odb_object_size, [GitOdbObject.by_ref], :uint64

  attach_function :git_odb_object_type, [GitOdbObject.by_ref], :git_otype

  attach_function :git_odb_add_backend, [GitOdb.by_ref, GitOdbBackend.by_ref, :int32], :int32

  attach_function :git_odb_add_alternate, [GitOdb.by_ref, GitOdbBackend.by_ref, :int32], :int32

  attach_function :git_odb_num_backends, [GitOdb.by_ref], :uint64

  attach_function :git_odb_get_backend, [:pointer, GitOdb.by_ref, :uint64], :int32

  attach_function :git_odb_backend_pack, [:pointer, :pointer], :int32

  attach_function :git_odb_backend_loose, [:pointer, :pointer, :int32, :int32, :uint32, :uint32], :int32

  attach_function :git_odb_backend_one_pack, [:pointer, :pointer], :int32

  enum :git_odb_stream_t, [:GIT_STREAM_RDONLY, 2, :GIT_STREAM_WRONLY, 4, :GIT_STREAM_RW, 6]


  class GitOdbStream < FFI::Struct
    layout :backend, GitOdbBackend.by_ref, :mode, :uint32, :hash_ctx, :pointer, :declared_size, :git_off_t, :received_bytes, :git_off_t, :read, callback([GitOdbStream.by_ref, :pointer, :uint64], :int32), :write, callback([GitOdbStream.by_ref, :pointer, :uint64], :int32), :finalize_write, callback([GitOdbStream.by_ref, :pointer], :int32), :free, callback([GitOdbStream.by_ref], :void)
  end

  class GitOdbWritepack < FFI::Struct
    layout :backend, GitOdbBackend.by_ref, :append, callback([GitOdbWritepack.by_ref, :pointer, :uint64, GitTransferProgress.by_ref], :int32), :commit, callback([GitOdbWritepack.by_ref, GitTransferProgress.by_ref], :int32), :free, callback([GitOdbWritepack.by_ref], :void)
  end

  class GitPatch < FFI::Struct
  end


  attach_function :git_patch_from_diff, [:pointer, GitDiff.by_ref, :uint64], :int32

  attach_function :git_patch_from_blobs, [:pointer, :pointer, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_patch_from_blob_and_buffer, [:pointer, :pointer, :pointer, :pointer, :uint64, :pointer, :pointer], :int32

  attach_function :git_patch_from_buffers, [:pointer, :pointer, :uint64, :pointer, :pointer, :uint64, :pointer, :pointer], :int32

  attach_function :git_patch_free, [GitPatch.by_ref], :void

  attach_function :git_patch_get_delta, [:pointer], :pointer

  attach_function :git_patch_num_hunks, [:pointer], :uint64

  attach_function :git_patch_line_stats, [:pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_patch_get_hunk, [:pointer, :pointer, GitPatch.by_ref, :uint64], :int32

  attach_function :git_patch_num_lines_in_hunk, [:pointer, :uint64], :int32

  attach_function :git_patch_get_line_in_hunk, [:pointer, GitPatch.by_ref, :uint64, :uint64], :int32

  attach_function :git_patch_size, [GitPatch.by_ref, :int32, :int32, :int32], :uint64

  attach_function :git_patch_print, [GitPatch.by_ref, :git_diff_line_cb, :pointer], :int32

  attach_function :git_patch_to_buf, [GitBuf.by_ref, GitPatch.by_ref], :int32

  class GitPathspec < FFI::Struct
  end


  class GitPathspecMatchList < FFI::Struct
  end


  enum :git_pathspec_flag_t, [:GIT_PATHSPEC_DEFAULT, 0, :GIT_PATHSPEC_IGNORE_CASE, 1, :GIT_PATHSPEC_USE_CASE, 2, :GIT_PATHSPEC_NO_GLOB, 4, :GIT_PATHSPEC_NO_MATCH_ERROR, 8, :GIT_PATHSPEC_FIND_FAILURES, 16, :GIT_PATHSPEC_FAILURES_ONLY, 32]


  attach_function :git_pathspec_new, [:pointer, :pointer], :int32

  attach_function :git_pathspec_free, [GitPathspec.by_ref], :void

  attach_function :git_pathspec_matches_path, [:pointer, :uint32, :pointer], :int32

  attach_function :git_pathspec_match_workdir, [:pointer, GitRepository.by_ref, :uint32, GitPathspec.by_ref], :int32

  attach_function :git_pathspec_match_index, [:pointer, GitIndex.by_ref, :uint32, GitPathspec.by_ref], :int32

  attach_function :git_pathspec_match_tree, [:pointer, GitTree.by_ref, :uint32, GitPathspec.by_ref], :int32

  attach_function :git_pathspec_match_diff, [:pointer, GitDiff.by_ref, :uint32, GitPathspec.by_ref], :int32

  attach_function :git_pathspec_match_list_free, [GitPathspecMatchList.by_ref], :void

  attach_function :git_pathspec_match_list_entrycount, [:pointer], :uint64

  attach_function :git_pathspec_match_list_entry, [:pointer, :uint64], :pointer

  attach_function :git_pathspec_match_list_diff_entry, [:pointer, :uint64], :pointer

  attach_function :git_pathspec_match_list_failed_entrycount, [:pointer], :uint64

  attach_function :git_pathspec_match_list_failed_entry, [:pointer, :uint64], :pointer

  class GitRebaseOption < FFI::Struct
    layout :version, :uint32, :quiet, :int32, :inmemory, :int32, :rewrite_notes_ref, :pointer, :merge_options, GitMergeOption.by_value, :checkout_options, GitCheckoutOption.by_value
  end


  enum :git_rebase_operation_t, [:GIT_REBASE_OPERATION_PICK, 0, :GIT_REBASE_OPERATION_REWORD, 1, :GIT_REBASE_OPERATION_EDIT, 2, :GIT_REBASE_OPERATION_SQUASH, 3, :GIT_REBASE_OPERATION_FIXUP, 4, :GIT_REBASE_OPERATION_EXEC, 5]


  class GitRebaseOperation < FFI::Struct
    layout :type, :git_rebase_operation_t, :id, GitOid.by_value, :exec, :pointer
  end


  attach_function :git_rebase_init_options, [GitRebaseOption.by_ref, :uint32], :int32

  attach_function :git_rebase_init, [:pointer, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_rebase_open, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_rebase_operation_entrycount, [GitRebase.by_ref], :uint64

  attach_function :git_rebase_operation_current, [GitRebase.by_ref], :uint64

  attach_function :git_rebase_operation_byindex, [GitRebase.by_ref, :uint64], GitRebaseOperation.by_ref

  attach_function :git_rebase_next, [:pointer, GitRebase.by_ref], :int32

  attach_function :git_rebase_inmemory_index, [:pointer, GitRebase.by_ref], :int32

  attach_function :git_rebase_commit, [GitOid.by_ref, GitRebase.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_rebase_abort, [GitRebase.by_ref], :int32

  attach_function :git_rebase_finish, [GitRebase.by_ref, :pointer], :int32

  attach_function :git_rebase_free, [GitRebase.by_ref], :void

  attach_function :git_refdb_new, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_refdb_open, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_refdb_compress, [GitRefdb.by_ref], :int32

  attach_function :git_refdb_free, [GitRefdb.by_ref], :void

  attach_function :git_reflog_read, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_reflog_write, [GitReflog.by_ref], :int32

  attach_function :git_reflog_append, [GitReflog.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_reflog_rename, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_reflog_delete, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_reflog_entrycount, [GitReflog.by_ref], :uint64

  attach_function :git_reflog_entry_byindex, [:pointer, :uint64], :pointer

  attach_function :git_reflog_drop, [GitReflog.by_ref, :uint64, :int32], :int32

  attach_function :git_reflog_entry_id_old, [:pointer], :pointer

  attach_function :git_reflog_entry_id_new, [:pointer], :pointer

  attach_function :git_reflog_entry_committer, [:pointer], :pointer

  attach_function :git_reflog_entry_message, [:pointer], :pointer

  attach_function :git_reflog_free, [GitReflog.by_ref], :void

  enum :git_reset_t, [:GIT_RESET_SOFT, 1, :GIT_RESET_MIXED, 2, :GIT_RESET_HARD, 3]


  attach_function :git_reset, [GitRepository.by_ref, :pointer, :git_reset_t, :pointer], :int32

  attach_function :git_reset_from_annotated, [GitRepository.by_ref, :pointer, :git_reset_t, :pointer], :int32

  attach_function :git_reset_default, [GitRepository.by_ref, :pointer, :pointer], :int32

  class GitRevertOption < FFI::Struct
    layout :version, :uint32, :mainline, :uint32, :merge_opts, GitMergeOption.by_value, :checkout_opts, GitCheckoutOption.by_value
  end


  attach_function :git_revert_init_options, [GitRevertOption.by_ref, :uint32], :int32

  attach_function :git_revert_commit, [:pointer, GitRepository.by_ref, GitCommit.by_ref, GitCommit.by_ref, :uint32, :pointer], :int32

  attach_function :git_revert, [GitRepository.by_ref, GitCommit.by_ref, :pointer], :int32

  attach_function :git_revparse_single, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_revparse_ext, [:pointer, :pointer, GitRepository.by_ref, :pointer], :int32

  enum :git_revparse_mode_t, [:GIT_REVPARSE_SINGLE, 1, :GIT_REVPARSE_RANGE, 2, :GIT_REVPARSE_MERGE_BASE, 4]


  class GitRevspec < FFI::Struct
    layout :from, GitObject.by_ref, :to, GitObject.by_ref, :flags, :uint32
  end


  attach_function :git_revparse, [GitRevspec.by_ref, GitRepository.by_ref, :pointer], :int32

  enum :git_sort_t, [:GIT_SORT_NONE, 0, :GIT_SORT_TOPOLOGICAL, 1, :GIT_SORT_TIME, 2, :GIT_SORT_REVERSE, 4]


  attach_function :git_revwalk_new, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_revwalk_reset, [GitRevwalk.by_ref], :void

  attach_function :git_revwalk_push, [GitRevwalk.by_ref, :pointer], :int32

  attach_function :git_revwalk_push_glob, [GitRevwalk.by_ref, :pointer], :int32

  attach_function :git_revwalk_push_head, [GitRevwalk.by_ref], :int32

  attach_function :git_revwalk_hide, [GitRevwalk.by_ref, :pointer], :int32

  attach_function :git_revwalk_hide_glob, [GitRevwalk.by_ref, :pointer], :int32

  attach_function :git_revwalk_hide_head, [GitRevwalk.by_ref], :int32

  attach_function :git_revwalk_push_ref, [GitRevwalk.by_ref, :pointer], :int32

  attach_function :git_revwalk_hide_ref, [GitRevwalk.by_ref, :pointer], :int32

  attach_function :git_revwalk_next, [GitOid.by_ref, GitRevwalk.by_ref], :int32

  attach_function :git_revwalk_sorting, [GitRevwalk.by_ref, :uint32], :void

  attach_function :git_revwalk_push_range, [GitRevwalk.by_ref, :pointer], :int32

  attach_function :git_revwalk_simplify_first_parent, [GitRevwalk.by_ref], :void

  attach_function :git_revwalk_free, [GitRevwalk.by_ref], :void

  attach_function :git_revwalk_repository, [GitRevwalk.by_ref], GitRepository.by_ref

  callback :git_revwalk_hide_cb, [:pointer, :pointer], :int32

  attach_function :git_revwalk_add_hide_cb, [GitRevwalk.by_ref, :git_revwalk_hide_cb, :pointer], :int32

  attach_function :git_signature_new, [:pointer, :pointer, :pointer, :git_time_t, :int32], :int32

  attach_function :git_signature_now, [:pointer, :pointer, :pointer], :int32

  attach_function :git_signature_default, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_signature_from_buffer, [:pointer, :pointer], :int32

  attach_function :git_signature_dup, [:pointer, :pointer], :int32

  attach_function :git_signature_free, [GitSignature.by_ref], :void

  enum :git_stash_flags, [:GIT_STASH_DEFAULT, 0, :GIT_STASH_KEEP_INDEX, 1, :GIT_STASH_INCLUDE_UNTRACKED, 2, :GIT_STASH_INCLUDE_IGNORED, 4]


  attach_function :git_stash_save, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer, :uint32], :int32

  enum :git_stash_apply_flags, [:GIT_STASH_APPLY_DEFAULT, 0, :GIT_STASH_APPLY_REINSTATE_INDEX, 1]


  enum :git_stash_apply_progress_t, [:GIT_STASH_APPLY_PROGRESS_NONE, 0, :GIT_STASH_APPLY_PROGRESS_LOADING_STASH, 1, :GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX, 2, :GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED, 3, :GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED, 4, :GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED, 5, :GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED, 6, :GIT_STASH_APPLY_PROGRESS_DONE, 7]


  callback :git_stash_apply_progress_cb, [:git_stash_apply_progress_t, :pointer], :int32

  class GitStashApplyOption < FFI::Struct
    layout :version, :uint32, :flags, :git_stash_apply_flags, :checkout_options, GitCheckoutOption.by_value, :progress_cb, :git_stash_apply_progress_cb, :progress_payload, :pointer
  end


  attach_function :git_stash_apply_init_options, [GitStashApplyOption.by_ref, :uint32], :int32

  attach_function :git_stash_apply, [GitRepository.by_ref, :uint64, :pointer], :int32

  callback :git_stash_cb, [:uint64, :pointer, :pointer, :pointer], :int32

  attach_function :git_stash_foreach, [GitRepository.by_ref, :git_stash_cb, :pointer], :int32

  attach_function :git_stash_drop, [GitRepository.by_ref, :uint64], :int32

  attach_function :git_stash_pop, [GitRepository.by_ref, :uint64, :pointer], :int32

  enum :git_status_t, [:GIT_STATUS_CURRENT, 0, :GIT_STATUS_INDEX_NEW, 1, :GIT_STATUS_INDEX_MODIFIED, 2, :GIT_STATUS_INDEX_DELETED, 4, :GIT_STATUS_INDEX_RENAMED, 8, :GIT_STATUS_INDEX_TYPECHANGE, 16, :GIT_STATUS_WT_NEW, 128, :GIT_STATUS_WT_MODIFIED, 256, :GIT_STATUS_WT_DELETED, 512, :GIT_STATUS_WT_TYPECHANGE, 1024, :GIT_STATUS_WT_RENAMED, 2048, :GIT_STATUS_WT_UNREADABLE, 4096, :GIT_STATUS_IGNORED, 16384, :GIT_STATUS_CONFLICTED, 32768]


  callback :git_status_cb, [:pointer, :uint32, :pointer], :int32

  enum :git_status_show_t, [:GIT_STATUS_SHOW_INDEX_AND_WORKDIR, 0, :GIT_STATUS_SHOW_INDEX_ONLY, 1, :GIT_STATUS_SHOW_WORKDIR_ONLY, 2]


  enum :git_status_opt_t, [:GIT_STATUS_OPT_INCLUDE_UNTRACKED, 1, :GIT_STATUS_OPT_INCLUDE_IGNORED, 2, :GIT_STATUS_OPT_INCLUDE_UNMODIFIED, 4, :GIT_STATUS_OPT_EXCLUDE_SUBMODULES, 8, :GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, 16, :GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH, 32, :GIT_STATUS_OPT_RECURSE_IGNORED_DIRS, 64, :GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, 128, :GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, 256, :GIT_STATUS_OPT_SORT_CASE_SENSITIVELY, 512, :GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY, 1024, :GIT_STATUS_OPT_RENAMES_FROM_REWRITES, 2048, :GIT_STATUS_OPT_NO_REFRESH, 4096, :GIT_STATUS_OPT_UPDATE_INDEX, 8192, :GIT_STATUS_OPT_INCLUDE_UNREADABLE, 16384, :GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED, 32768]


  class GitStatusOption < FFI::Struct
    layout :version, :uint32, :show, :git_status_show_t, :flags, :uint32, :pathspec, GitStrarray.by_value, :baseline, GitTree.by_ref
  end


  attach_function :git_status_init_options, [GitStatusOption.by_ref, :uint32], :int32

  class GitStatusEntry < FFI::Struct
    layout :status, :git_status_t, :head_to_index, GitDiffDeltum.by_ref, :index_to_workdir, GitDiffDeltum.by_ref
  end


  attach_function :git_status_foreach, [GitRepository.by_ref, :git_status_cb, :pointer], :int32

  attach_function :git_status_foreach_ext, [GitRepository.by_ref, :pointer, :git_status_cb, :pointer], :int32

  attach_function :git_status_file, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_status_list_new, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_status_list_entrycount, [GitStatusList.by_ref], :uint64

  attach_function :git_status_byindex, [GitStatusList.by_ref, :uint64], :pointer

  attach_function :git_status_list_free, [GitStatusList.by_ref], :void

  attach_function :git_status_should_ignore, [:pointer, GitRepository.by_ref, :pointer], :int32

  enum :git_submodule_status_t, [:GIT_SUBMODULE_STATUS_IN_HEAD, 1, :GIT_SUBMODULE_STATUS_IN_INDEX, 2, :GIT_SUBMODULE_STATUS_IN_CONFIG, 4, :GIT_SUBMODULE_STATUS_IN_WD, 8, :GIT_SUBMODULE_STATUS_INDEX_ADDED, 16, :GIT_SUBMODULE_STATUS_INDEX_DELETED, 32, :GIT_SUBMODULE_STATUS_INDEX_MODIFIED, 64, :GIT_SUBMODULE_STATUS_WD_UNINITIALIZED, 128, :GIT_SUBMODULE_STATUS_WD_ADDED, 256, :GIT_SUBMODULE_STATUS_WD_DELETED, 512, :GIT_SUBMODULE_STATUS_WD_MODIFIED, 1024, :GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED, 2048, :GIT_SUBMODULE_STATUS_WD_WD_MODIFIED, 4096, :GIT_SUBMODULE_STATUS_WD_UNTRACKED, 8192]


  callback :git_submodule_cb, [GitSubmodule.by_ref, :pointer, :pointer], :int32

  class GitSubmoduleUpdateOption < FFI::Struct
    layout :version, :uint32, :checkout_opts, GitCheckoutOption.by_value, :fetch_opts, GitFetchOption.by_value, :allow_fetch, :int32
  end


  attach_function :git_submodule_update_init_options, [GitSubmoduleUpdateOption.by_ref, :uint32], :int32

  attach_function :git_submodule_update, [GitSubmodule.by_ref, :int32, GitSubmoduleUpdateOption.by_ref], :int32

  attach_function :git_submodule_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_submodule_free, [GitSubmodule.by_ref], :void

  attach_function :git_submodule_foreach, [GitRepository.by_ref, :git_submodule_cb, :pointer], :int32

  attach_function :git_submodule_add_setup, [:pointer, GitRepository.by_ref, :pointer, :pointer, :int32], :int32

  attach_function :git_submodule_add_finalize, [GitSubmodule.by_ref], :int32

  attach_function :git_submodule_add_to_index, [GitSubmodule.by_ref, :int32], :int32

  attach_function :git_submodule_owner, [GitSubmodule.by_ref], GitRepository.by_ref

  attach_function :git_submodule_name, [GitSubmodule.by_ref], :pointer

  attach_function :git_submodule_path, [GitSubmodule.by_ref], :pointer

  attach_function :git_submodule_url, [GitSubmodule.by_ref], :pointer

  attach_function :git_submodule_resolve_url, [GitBuf.by_ref, GitRepository.by_ref, :pointer], :int32

  attach_function :git_submodule_branch, [GitSubmodule.by_ref], :pointer

  attach_function :git_submodule_set_branch, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_submodule_set_url, [GitRepository.by_ref, :pointer, :pointer], :int32

  attach_function :git_submodule_index_id, [GitSubmodule.by_ref], :pointer

  attach_function :git_submodule_head_id, [GitSubmodule.by_ref], :pointer

  attach_function :git_submodule_wd_id, [GitSubmodule.by_ref], :pointer

  attach_function :git_submodule_ignore, [GitSubmodule.by_ref], :git_submodule_ignore_t

  attach_function :git_submodule_set_ignore, [GitRepository.by_ref, :pointer, :git_submodule_ignore_t], :int32

  attach_function :git_submodule_update_strategy, [GitSubmodule.by_ref], :git_submodule_update_t

  attach_function :git_submodule_set_update, [GitRepository.by_ref, :pointer, :git_submodule_update_t], :int32

  attach_function :git_submodule_fetch_recurse_submodules, [GitSubmodule.by_ref], :git_submodule_recurse_t

  attach_function :git_submodule_set_fetch_recurse_submodules, [GitRepository.by_ref, :pointer, :git_submodule_recurse_t], :int32

  attach_function :git_submodule_init, [GitSubmodule.by_ref, :int32], :int32

  attach_function :git_submodule_repo_init, [:pointer, :pointer, :int32], :int32

  attach_function :git_submodule_sync, [GitSubmodule.by_ref], :int32

  attach_function :git_submodule_open, [:pointer, GitSubmodule.by_ref], :int32

  attach_function :git_submodule_reload, [GitSubmodule.by_ref, :int32], :int32

  attach_function :git_submodule_status, [:pointer, GitRepository.by_ref, :pointer, :git_submodule_ignore_t], :int32

  attach_function :git_submodule_location, [:pointer, GitSubmodule.by_ref], :int32

  attach_function :git_tag_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_tag_lookup_prefix, [:pointer, GitRepository.by_ref, :pointer, :uint64], :int32

  attach_function :git_tag_free, [GitTag.by_ref], :void

  attach_function :git_tag_id, [:pointer], :pointer

  attach_function :git_tag_owner, [:pointer], GitRepository.by_ref

  attach_function :git_tag_target, [:pointer, :pointer], :int32

  attach_function :git_tag_target_id, [:pointer], :pointer

  attach_function :git_tag_target_type, [:pointer], :git_otype

  attach_function :git_tag_name, [:pointer], :pointer

  attach_function :git_tag_tagger, [:pointer], :pointer

  attach_function :git_tag_message, [:pointer], :pointer

  attach_function :git_tag_create, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer, :int32], :int32

  attach_function :git_tag_annotation_create, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_tag_create_frombuffer, [GitOid.by_ref, GitRepository.by_ref, :pointer, :int32], :int32

  attach_function :git_tag_create_lightweight, [GitOid.by_ref, GitRepository.by_ref, :pointer, :pointer, :int32], :int32

  attach_function :git_tag_delete, [GitRepository.by_ref, :pointer], :int32

  attach_function :git_tag_list, [GitStrarray.by_ref, GitRepository.by_ref], :int32

  attach_function :git_tag_list_match, [GitStrarray.by_ref, :pointer, GitRepository.by_ref], :int32

  callback :git_tag_foreach_cb, [:pointer, GitOid.by_ref, :pointer], :int32

  attach_function :git_tag_foreach, [GitRepository.by_ref, :git_tag_foreach_cb, :pointer], :int32

  attach_function :git_tag_peel, [:pointer, :pointer], :int32

  attach_function :git_tag_dup, [:pointer, GitTag.by_ref], :int32

  attach_function :git_transaction_new, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_transaction_lock_ref, [GitTransaction.by_ref, :pointer], :int32

  attach_function :git_transaction_set_target, [GitTransaction.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_transaction_set_symbolic_target, [GitTransaction.by_ref, :pointer, :pointer, :pointer, :pointer], :int32

  attach_function :git_transaction_set_reflog, [GitTransaction.by_ref, :pointer, :pointer], :int32

  attach_function :git_transaction_remove, [GitTransaction.by_ref, :pointer], :int32

  attach_function :git_transaction_commit, [GitTransaction.by_ref], :int32

  attach_function :git_transaction_free, [GitTransaction.by_ref], :void

  attach_function :git_worktree_list, [GitStrarray.by_ref, GitRepository.by_ref], :int32

  attach_function :git_worktree_lookup, [:pointer, GitRepository.by_ref, :pointer], :int32

  attach_function :git_worktree_open_from_repository, [:pointer, GitRepository.by_ref], :int32

  attach_function :git_worktree_free, [GitWorktree.by_ref], :void

  attach_function :git_worktree_validate, [:pointer], :int32

  class GitWorktreeAddOption < FFI::Struct
    layout :version, :uint32, :lock, :int32
  end


  attach_function :git_worktree_add_init_options, [GitWorktreeAddOption.by_ref, :uint32], :int32

  attach_function :git_worktree_add, [:pointer, GitRepository.by_ref, :pointer, :pointer, :pointer], :int32

  attach_function :git_worktree_lock, [GitWorktree.by_ref, :pointer], :int32

  attach_function :git_worktree_unlock, [GitWorktree.by_ref], :int32

  attach_function :git_worktree_is_locked, [GitBuf.by_ref, :pointer], :int32

  enum :git_worktree_prune_t, [:GIT_WORKTREE_PRUNE_VALID, 1, :GIT_WORKTREE_PRUNE_LOCKED, 2, :GIT_WORKTREE_PRUNE_WORKING_TREE, 4]


  class GitWorktreePruneOption < FFI::Struct
    layout :version, :uint32, :flags, :uint32
  end


  attach_function :git_worktree_prune_init_options, [GitWorktreePruneOption.by_ref, :uint32], :int32

  attach_function :git_worktree_is_prunable, [GitWorktree.by_ref, GitWorktreePruneOption.by_ref], :int32

  attach_function :git_worktree_prune, [GitWorktree.by_ref, GitWorktreePruneOption.by_ref], :int32
end
