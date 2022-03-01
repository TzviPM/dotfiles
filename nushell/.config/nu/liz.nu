def "liz init ts" [] {
    npm init -y
    npm add --save-dev typescript@next
    npm add --save-dev prettier
    open package.json | insert type module | save package.json
    [[target module strict esModuleInterop skipLibCheck forceConsistentCasingInFileNames]; [ESNext nodenext $true $true $true $true]] | save tsconfig.json
    [[trailingComma tabWidth semi singleQuote]; [all 2 $true $true]] | to json | save .prettierrc
    npx prettier --write .
}