# save state of containers, less any auth credentials (in /run usually)
save_container_env_state() {
  resourceName=$1

  local clean
  clean=$(find_resource_variable "$resourceName" "clean")

  ensureTarball containerStateTarball "$containerStorageDir" "$clean"
}

execute_command save_container_env_state "%%context.resourceName%%"