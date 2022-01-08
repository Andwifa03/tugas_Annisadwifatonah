/*
 Navicat Premium Data Transfer

 Source Server         : LocalConnection
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : 127.0.0.1:3306
 Source Schema         : db_ritel

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : 65001

 Date: 17/11/2021 20:52:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE `tbl_barang`  (
  `ppi_id` int(11) NOT NULL AUTO_INCREMENT,
  `Kode` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Kode_jenis_barang` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Stok` int(11) NULL DEFAULT NULL,
  `Harga` int(11) NULL DEFAULT NULL,
  `Keterangan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `User_create` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Sync` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ppi_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES (1, 'B01', '1Sa', 'Rinso', 0, 10000, '-', NULL, '2021-11-17 20:39:40', NULL);
INSERT INTO `tbl_barang` VALUES (2, 'B02', '1Sa', 'SoKlin', 0, 9000, NULL, NULL, '2021-11-17 20:39:55', NULL);
INSERT INTO `tbl_barang` VALUES (3, 'B03', '1Sa', 'Total', 0, 9800, NULL, NULL, '2021-11-17 20:40:10', NULL);
INSERT INTO `tbl_barang` VALUES (4, 'B04', '3Pe', 'Penggaris Tekiro', 0, 35000, NULL, NULL, '2021-11-17 20:40:37', NULL);

-- ----------------------------
-- Table structure for tbl_jenis_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jenis_barang`;
CREATE TABLE `tbl_jenis_barang`  (
  `ppi_id` int(11) NOT NULL AUTO_INCREMENT,
  `Kode` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `User_create` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Sync` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ppi_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_jenis_barang
-- ----------------------------
INSERT INTO `tbl_jenis_barang` VALUES (1, '1Sa', 'Sabun Cuci', NULL, '2021-11-17 20:22:07', NULL);
INSERT INTO `tbl_jenis_barang` VALUES (2, '2Pe', 'Peralatan Kantor', NULL, '2021-11-17 20:22:33', NULL);
INSERT INTO `tbl_jenis_barang` VALUES (3, '3Pe', 'Peralatan Pertukangan', NULL, '2021-11-17 20:22:50', NULL);

-- ----------------------------
-- Procedure structure for sp_tbl_jenis_barang_view
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_tbl_jenis_barang_view`;
delimiter ;;
CREATE PROCEDURE `sp_tbl_jenis_barang_view`()
BEGIN
SELECT
	tbl_jenis_barang.Kode, 
	tbl_jenis_barang.Nama, 
	tbl_jenis_barang.Created
FROM
	tbl_jenis_barang;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for tbl_barang_view
-- ----------------------------
DROP PROCEDURE IF EXISTS `tbl_barang_view`;
delimiter ;;
CREATE PROCEDURE `tbl_barang_view`()
BEGIN
SELECT
	tbl_barang.Kode, 
	tbl_jenis_barang.Nama as Jenis_barang,
	tbl_barang.Nama, 
	tbl_barang.Stok, 
	tbl_barang.Harga, 
	tbl_barang.Keterangan, 
	tbl_barang.Created
FROM
	tbl_barang
	INNER JOIN
	tbl_jenis_barang
	ON 
		tbl_barang.Kode_jenis_barang = tbl_jenis_barang.Kode;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
