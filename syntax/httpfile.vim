if exists('b:current_syntax')
  finish
endif

let b:current_syntax = 'httpfile'
syntax sync minlines=20 maxlines=200

syntax match httpfileSeparator "\v^###.*$" contains=@Spell
syntax match httpfileComment1 "\v^#.*$" contains=@Spell
syntax match httpfileComment2 "\v^//.*$" contains=@Spell
syntax match httpfileKeywords "\v^%(GET|POST|HEAD|PUT|DELETE|RSOCKET|RPC|FNF|STREAM|METADATA_PUSH|GRPC|GRAPHQL|GRAPHQLWS|GRAPHQLWSS|DUBBO|SOFA|TARPC|MSGPACK|NVIM|JSONRPC|THRIFT|ZEROREQ|MAIL|ALIYUN|MEMCACHE|AWS|AWSPOST|AWSDELETE|AWSPUT|PUB|SUB|RSET|HMSET|EVAL|LOAD|SSH|REST)\s"
syntax match httpfileHeaders "\v^%(Accept|Accept-Charset|Accept-Encodingg|Accept-Datetime|Accept-Language|Authorization|Content-Type|Cache-Control|Cookie|Content-Length|Content-MD5|Date|From|Host|If-Modified-Since|Max-Forwards|Origin|Pragma|Proxy-Authorization|Range|Referer|User-Agent|X-Requested-With|X-Forwarded-For|X-Forwarded-Host|X-Forwarded-Proto|X-Csrf-Token|X-JSON-Type|Subject|Reply-to|URI|X-JSON-Schema|X-JSON-Type|X-JSON-Path|X-Region-Id|X-GraphQL-Variables|X-SSH-Private-Key|X-Args-0|X-Args-1|X-Args-2|X-Args-3|X-Args-4|X-Args-5|X-Body-Name):"
syntax match httpfileVariables "\v\{\{[^\}]+\}\}"

syntax match httpOperator "\v\?"
syntax match httpOperator "\v\="
syntax match httpOperator "\v\&"

syntax region jsonString start=/"/ skip=/\./ end=/"/ contains=httpfileVariables


highlight default link httpfileKeywords   Keyword
highlight default link httpfileComment1   Comment
highlight default link httpfileComment2   Comment
highlight default link httpfileHeaders    Constant
highlight default link httpfileVariables  Function
highlight default link jsonString         String
highlight default link httpOperator       Operator
