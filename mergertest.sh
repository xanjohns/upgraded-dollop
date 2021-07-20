git checkout -b add-common-config
git subtree add --prefix third_party/common-config https://github.com/ryancj14/common-config.git main --squash

mv third_party/common-config/formatter-files/.* .
mv third_party/common-config/LICENSE .
mv third_party/common-config/docs/* ./docs
mv third_party/common-config/.github/ISSUE_TEMPLATE/* ./.github/ISSUE_TEMPLATE
mv third_party/common-config/.github/workflows/* ./.github/workflows
mv third_party/common-config/.github/pull_request_template.md ./.github
