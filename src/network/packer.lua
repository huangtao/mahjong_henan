-- ������Ϣ������
local Utils = require "utils"

local M = {}

-- ����ʽ
-- ���ֽڰ���
-- ���ֽ�Э���
-- ���ַ��ַ�������
-- �ַ�������
function M.pack(proto_id, msg)
    local params_str = Utils.table_2_str(msg)
	print(params_str)
	local len = 2 + 2 + #params_str
	local data = string.pack(">h>hP", len, proto_id, params_str)
    return data	
end

function M.unpack()

end

return M
