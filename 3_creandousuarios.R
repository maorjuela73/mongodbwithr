library(mongolite)

mongourl <- "mongodb://<USER>:<PASSWORD>@test..."

subjects <- mongo("subjects", url = mongourl)
subjects$insert('{"name" : "blanca"}')
subjects$find(query = '{}', fields = '{}')
str <- c('{"name" : "jerry"}' , '{"name": "anna", "age" : 23}', '{"name": "joe"}')
subjects$insert(str)
subjects$find(query = '{}', fields = '{}')

subjects$insert('{"name": "ewdin",
                  "item": "canvas", 
                  "qty": "100", 
                  "tags": ["cotton"], 
                  "size": {
                    "h": "28", 
                    "w": "35.5", 
                    "uom": "cm"
                    } 
                  }')
subjects$find(query = '{}', fields = '{}')