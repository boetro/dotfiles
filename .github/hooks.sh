if git commit -v --dry-run | grep 'DO NOT SUBMIT' >/dev/null 2>&1
then
  echo "Trying to commit non-committable code."
  echo "Remove the DO NOT SUBMIT string and try again."
  exit 1
else
  # Run local pre-commit hook if exists
  if [ -e ./.git/hooks/pre-commit ]; then
    ./.git/hooks/pre-commit "$@"
  else
    exit 0
  fi
fi

# DO NOT SUBMIT THIS IS FOR TESTING
