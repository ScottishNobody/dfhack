project(diggingInvaders)
# A list of source files
set(PROJECT_SRCS
    diggingInvaders.cpp
    edgeCost.cpp
    assignJob.cpp
)
# A list of headers
set(PROJECT_HDRS
    edgeCost.h
    assignJob.h
)
set_source_files_properties(${PROJECT_HDRS} PROPERTIES HEADER_FILE_ONLY TRUE)

# mash them together (headers are marked as headers and nothing will try to compile them)
list(APPEND PROJECT_SRCS ${PROJECT_HDRS})

dfhack_plugin(diggingInvaders ${PROJECT_SRCS})
