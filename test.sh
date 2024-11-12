VERSION=$(grep -E "^version: " pubspec.yaml | cut -d" " -f2)
V=$(expr 1 + $(echo $VERSION | cut -d+ -f1 | cut -d. -f1,2,3 | sed s/"\."//g))
MAJOR=$(echo $V | cut -c1)
MINOR=$(echo $V | cut -c2)
PATCH=$(echo $V | cut -c3)
BUILD=$(expr 1 + $(echo $VERSION | cut -d+ -f2))

sed -i '' s/"^version:.*"/"version: $MAJOR.$MINOR.$PATCH+$BUILD"/g pubspec.yaml