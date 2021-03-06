#!/bin/bash
#
# Copyright (C) 2020 SebaUbuntu's HomeBot
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Arguments: none
tg_get_me() {
	curl -s -X GET "$TG_API_URL/getMe" | jq .
}

# Arguments: <curl arguments>
tg_get_updates() {
	curl -s -X GET "$TG_API_URL/getUpdates" $@ | jq .
}

# Arguments: <chat_id> <user_id>
tg_get_chat_member() {
	curl -s -X GET "$TG_API_URL/getChatMember" -d chat_id="$1" -d user_id="$2" | jq ".result"
}