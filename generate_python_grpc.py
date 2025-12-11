#!/usr/bin/env python3
"""
生成 Python gRPC 代码的脚本
使用前需要安装: pip install grpcio-tools
"""

import subprocess
import sys
import os

def check_dependencies():
    """检查依赖"""
    try:
        import grpc_tools
        print("✓ grpcio-tools 已安装")
        return True
    except ImportError:
        print("❌ grpcio-tools 未安装")
        print("正在安装...")
        try:
            subprocess.check_call([sys.executable, "-m", "pip", "install", "grpcio-tools"])
            print("✓ 安装成功")
            return True
        except subprocess.CalledProcessError:
            print("❌ 安装失败，请手动运行:")
            print("  pip install grpcio-tools")
            return False

def generate_python_code():
    """生成 Python gRPC 代码"""
    print("\n" + "=" * 40)
    print("生成 Python gRPC 代码")
    print("=" * 40)
    
    # 创建输出目录
    os.makedirs("generated", exist_ok=True)
    
    # 生成代码
    print("\n正在生成 Python gRPC 代码...")
    cmd = [
        sys.executable, "-m", "grpc_tools.protoc",
        "-I", "protos",
        "--python_out=generated",
        "--grpc_python_out=generated",
        "protos/site_health.proto"
    ]
    
    try:
        subprocess.check_call(cmd)
        print("✓ Python 代码生成成功！")
        print("  生成文件:")
        print("  - generated/site_health_pb2.py")
        print("  - generated/site_health_pb2_grpc.py")
        
        # 创建 __init__.py
        init_file = "generated/__init__.py"
        if not os.path.exists(init_file):
            with open(init_file, "w") as f:
                f.write("# Generated gRPC code\n")
        
        return True
    except subprocess.CalledProcessError:
        print("❌ 生成失败")
        return False

def main():
    if not check_dependencies():
        return 1
    
    if not generate_python_code():
        return 1
    
    print("\n" + "=" * 40)
    print("完成！")
    print("=" * 40)
    return 0

if __name__ == "__main__":
    sys.exit(main())
