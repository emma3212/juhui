package com.juhui.common.utils;

import com.pandawork.core.exception.SSException;
import com.pandawork.core.fileUpload.FileUploadProcessor;
import com.pandawork.core.fileUpload.UploadFile;
import com.pandawork.core.fileUpload.impl.DefaultFileUpload;
import com.pandawork.core.log.LogClerk;
import com.pandawork.core.web.spring.fileupload.PandaworkMultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * 文件工具类
 *
 * @author: zhangteng
 * @time: 2014/7/17 15:21
 */
public final class FileUtil {

    /**
     * 调用core上传文件
     *
     * @param file       要上传的文件
     * @param fileFolder 保存的文件夹
     * @param request
     * @return path         保存后的路径
     * @throws SSException
     */
    public static String uploadFile(PandaworkMultipartFile file,
                                    String fileFolder,
                                    HttpServletRequest request) throws SSException {
        if (file != null) {
            try {
                FileUploadProcessor defaultFileUpload = new DefaultFileUpload();
                String filename = file.getOriginalFilename();
                String basePath = request.getSession().getServletContext().getRealPath("/resources/");
                UploadFile files = new UploadFile(file.getFile(), basePath, fileFolder, filename, request);
                String path = defaultFileUpload.uploadOneFile(files);
                //System.out.println("path:" + path);
                return path;
            } catch (SSException e) {
                LogClerk.errLog.error(e);
                throw SSException.get(com.juhui.common.exception.JuhuiException.UploadFileFail, e);
            }
        }
        return null;
    }
}
